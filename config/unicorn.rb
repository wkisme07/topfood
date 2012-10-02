rails_env = ENV['RAILS_ENV'] || 'production'

working_directory "/home/deploy/rails-app/topfood/current"
pid "/home/deploy/rails-app/topfood/current/tmp/pids/unicorn.pid"
stderr_path "/home/deploy/rails-app/topfood/current/unicorn/unicorn.log"
stdout_path "/home/deploy/rails-app/topfood/current/unicorn/unicorn.log"

listen "/tmp/unicorn.todo.sock"
worker_processes (rails_env == 'production' ? 4 : 2)
timeout 30