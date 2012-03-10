set :application, "dfworldgen"
set :repository,  "git://github.com/Trevoke/dfworldgen.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "dwarffortress.org"                          # Your HTTP server, Apache/etc
role :app, "dwarffortress.org"                          # This may be the same as your `Web` server
role :db,  "dwarffortress.org", :primary => true # This is where Rails migrations will run

#role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
