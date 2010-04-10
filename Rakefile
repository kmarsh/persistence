task :get do
  system("echo 'Cloning git repo...' && git clone git://github.com/csnip/csnip.git tmp/csnip")
end

task :default => [:get] do
  system("echo 'Building...' && cd tmp/csnip && touch config/database.yml && rake")
end