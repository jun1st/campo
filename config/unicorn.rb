APP_PATH = File.expand_path(File.expand_path(File.dirname(__FILE__)) + "/../")
SHARED_PATH = File.expand_path(APP_PATH + "/../")

worker_processes 2
working_directory APP_PATH

listen "#{SHARED_PATH}/shared/sockets/campo.unicorn.sock", :backlog => 64
timeout 30

pid "#{SHARED_PATH}/shared/sockets/pids/unicorn.pid"
stderr_path "#{APP_PATH}/log/unicorn.stderr.log"
stdout_path "#{APP_PATH}/log/unicorn.stdout.log"
