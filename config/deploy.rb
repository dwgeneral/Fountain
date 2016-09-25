# config valid only for current version of Capistrano
lock '3.5.0'

set :user, 'ubuntu'
set :application, 'fountain'
set :repo_url, 'https://github.com/dwgeneral/Fountain.git'
set :deploy_to, '/opt/fountain/'
set :linked_files, fetch(:linked_files, []).push("config/*.yml")
set :linked_dirs, fetch(:linked_dirs, []).push("log", "tmp/pids")
set :keep_releases, 5

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
