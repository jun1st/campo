source 'http://ruby.taobao.org'

gem 'rails', '~> 4.1.0.rc1'     
gem 'arel'             

# Use postgresql as the database for Active Record
gem 'pg'

# Use edge version of sprockets-rails
gem 'sprockets-rails' 

# Use SCSS for stylesheets
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',     platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Bootstrap
gem 'bootstrap-sass', '~> 3.1.0'

# Font Awesome
gem 'font-awesome-sass', '~> 4.0.2'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# bundle exec rake doc:rails generates the API under doc/api.
#gem 'sdoc',             group: :doc, require: false

# Slim template
gem 'slim', '~> 2.0.2'

# Markdown
gem 'redcarpet', '~> 3.0.0'

# Code highlight
gem 'rouge', '~> 1.3.1'

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.1.2'

# Paignator
gem 'kaminari', '~> 0.15.1'

# Nokogiri XML parser
gem 'nokogiri', '~> 1.6.1'

# Gravatar
gem 'gravtastic', '~> 3.2.6'

# Elasticsearch
gem 'elasticsearch-model', git: 'git://github.com/elasticsearch/elasticsearch-rails.git'
gem 'elasticsearch-rails', git: 'git://github.com/elasticsearch/elasticsearch-rails.git'

# File upload
gem 'carrierwave', '~> 0.9.0'
gem 'mini_magick', '~> 3.7.0'

# User locale detect
gem 'http_accept_language', '~> 2.0.1'

# i18n
gem 'rails-i18n', '~> 4.0.1'

# redis
gem 'redis', '~> 3.0.7'
gem 'hiredis', '~> 0.4.5'

# Background jobs
gem 'resque', '~> 1.25.1'
gem 'resque_mailer', '~> 2.2.6'

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/jonleighton/spring
  gem 'spring'

  # Livereload
  gem 'guard-livereload', require: false
  gem 'rack-livereload'

  # i18n extractor
  gem 'i18n-tasks', '~> 0.3.2'
  # Visual email testing
  gem 'mail_view', '~> 2.0.4'

  # Deploy tool
  gem 'capistrano', '~> 3.1.0'
  gem 'capistrano-rbenv'
  gem 'capistrano-bundler', '~> 1.1.2'
  gem 'capistrano-rails', '~> 1.0.0'
end

group :development, :test do
  gem 'factory_girl_rails', '~> 4.3.0'
end

group :production do
  gem 'unicorn', '~> 4.8.2'
end
