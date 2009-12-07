set :application, "myspeechtime.com"
role :app, application
role :web, application
role :db, application, :primary => true

set :user, "kevin"
set :deploy_to, "/var/apps/myspeechtime"
set :use_sudo, false
default_run_options[:pty] = true

set :scm, "git"
set :repository, "ssh://cannedapps.com/var/git/myspeechtime.git"
set :branch, "master"

namespace :deploy do
  desc "Tell Passenger to restart."
  task :restart, :roles => :app do
    run "mkdir -p #{release_path}/tmp && touch #{release_path}/tmp/restart.txt"
  end
end