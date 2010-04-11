# http://pointlessone.org/nice-rakefile/
require 'rake'

desc "Run specs"
task :spec do
  unless Rake.application.lookup('real_spec')
    require 'spec'
    require 'spec/rake/spectask'

    spec_files = Rake::FileList["spec/**/*_spec.rb"]

    Spec::Rake::SpecTask.new(:real_spec) do |t|
      t.spec_files = spec_files
      t.spec_opts = ["-c"]
    end
  end
  Rake.application['real_spec'].invoke
end

task(:default => :spec)

# namespace :build do
  
#   desc "Runs the build"
#   task :run do
#     # http://stackoverflow.com/questions/577944/how-to-run-rake-tasks-from-within-rake-tasks
#     # Rake::Task["build:checkout"].invoke
#     # system("cd tmp/persistence")
#     #   system("export RAILS_ENV='test'")
#     #   Rake::Task["build:database"].invoke
#     #   Rake::Task["rake gems:install"].invoke
#     #   Rake::Task["rake"].invoke
#     # end
#   end
  
#   desc "Checks out the most recent commit"
#   task :checkout do
#     unless File.directory?('tmp/persistence')
#       system("echo 'Cloning git repo...' && git clone git://github.com/willcodeforfoo/persistence.git tmp/persistence")
#     else
#       system("echo 'Updating git repo...' && git pull --rebase")
#     end
#   end

#   desc "Configures the database for the build"
#   task :database do
#     database_yml = <<EOF
# test:
#   adapter: sqlite3
#   database: tmp/test.sqlite3
#   timeout: 5000
# EOF
#     File.open("/home/c/Sources/persistence/tmp/persistence/config/database.yml", "w") do |f|
#       #      f.puts database_yml
#       f << "foo"
#     end
#   end

#   desc "Runs rake in the application root"
#   task :rake do
#     system("echo 'Building...' && cd tmp/persistence && RAILS_ENV='test' rake --trace")
#   end

#   desc "Cleans up the checked out code"
#   task :clean do
#     system("rm -rf tmp/persistence")
#     system("rm -rf tmp/test.sqlite3")
#   end
#end
