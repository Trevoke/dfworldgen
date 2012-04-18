require 'bundler/capistrano'
$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require 'rvm/capistrano'

set :rvm_ruby_string, '1.9.3'

set :default_environment, {
  'PATH' => "/usr/local/rvm/gems/ruby-1.9.3-p125/bin:/usr/local/rvm/bin:/usr/local/rvm/rubies/ruby-1.9.3-p125/bin:$PATH",
  'RUBY_VERSION' => 'ruby 1.9.3',
  'GEM_HOME'     => '/usr/local/rvm/gems/ruby-1.9.3-p125', 
  'GEM_PATH'     => '/usr/local/rvm/gems/ruby-1.9.3-p125', 
  'BUNDLE_PATH'  => '/usr/local/rvm/gems/ruby-1.9.3-p125'
}

set :application, "dfworldgen"
set :repository,  "git://github.com/Trevoke/dfworldgen.git"

set :scm, :git
set :branch, "master"
set :deploy_via, :remote_cache
set :deploy_to, "~/#{application}"

# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
server = '67.23.43.160' # dwarffortress.org IP
role :web, server                          # Your HTTP server, Apache/etc
role :app, server                          # This may be the same as your `Web` server
role :db,  server, :primary => true # This is where Rails migrations will run

#role :db,  "your slave db-server here"

ssh_options[:username] = 'trevoke'

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

namespace :rvm do
  task :trust_rvmrc do
    run "\"rvm rvmrc trust \#\{release_path\}\""
  end
end

after :deploy, "rvm:trust_rvmrc"
