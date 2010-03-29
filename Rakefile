task :get do
  system("git clone git://github.com/csnip/csnip.git tmp/csnip")
end

task :default => [:get] do
  system("cd tmp/csnip && rake")
end