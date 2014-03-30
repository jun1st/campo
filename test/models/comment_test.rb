require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "should increment commentable counter cache" do
    topic = create(:topic)
    create :comment, commentable: topic
    assert_equal 1, topic.reload.comments_count
  end

  test "should decrement commentable counter cache" do
    topic = create(:topic)
    comment = create :comment, commentable: topic
    comment.trash
    assert_equal 0, topic.reload.comments_count

    comment.restore
    assert_equal 1, topic.reload.comments_count

    comment.trash
    comment.destroy
    assert_equal 0, topic.reload.comments_count
  end

  test "should touch commentable" do
    time = 1.day.ago
    topic = create(:topic, updated_at: time)
    create(:comment, commentable: topic)
    assert topic.updated_at > time
  end

  test "should count page" do
    topic = create(:topic)
    3.times { create :comment, commentable: topic }
    assert_equal 1, topic.comments.order(id: :asc).first.page(2)
    assert_equal 1, topic.comments.order(id: :asc).second.page(2)
    assert_equal 2, topic.comments.order(id: :asc).last.page(2)
  end

  test "should get mention_users" do
    user1 = create :user, username: 'user1'
    user2 = create :user, username: 'user2'
    comment = build(:comment, body: '@user1 @user2')
    assert_equal [user1, user2].sort, comment.mention_users.sort
  end

  test "should create_mention_notifications" do
    user = create(:user)

    assert_difference "user.notifications.named('mention').count" do
    create(:comment, body: "@#{user.username}")
    end
  end

  test "shuold create_comment_notifications for subscribed_users" do
    user = create(:user)
    topic = create(:topic)
    topic.subscribe_by user

    assert_difference "user.notifications.named('comment').count" do
      create(:comment, commentable: topic)
    end
  end

  test "should delete all related notifications after trash" do
    # notification name: comment
    comment = create(:comment)

    assert_difference "Notification.count", -1 do
      comment.trash
    end
  end

  test "should delete all related notifications after destroy" do
    # notification name: comment
    comment = create(:comment)

    assert_difference "Notification.count", -1 do
      comment.destroy
    end
  end

  test "should delete_all likes after trash" do
    comment = create(:comment)
    create :like, likeable: comment
    assert_difference "Like.count", -1 do
      comment.trash
    end
  end
end
