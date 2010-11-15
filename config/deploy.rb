$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
require "rvm/capistrano"                  # Load RVM's capistrano plugin.
set :rvm_ruby_string, 'ruby-1.9.2-head@rails3'        # Or whatever env you want it to run in.
#set :rvm_type, :user

set :application, "scoop.bitbox.ca"
set :repository,  "dkerins@bitbox.ca:git/scoop.git"
set :deploy_to, "/opt/nginx/scoop"
set :scm, :git
default_run_options[:pty] = true
#set :scm, :subversion
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "bitbox.ca"                          # Your HTTP server, Apache/etc
role :app, "bitbox.ca"                          # This may be the same as your `Web` server
role :db,  "bitbox.ca", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
