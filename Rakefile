task :get do
  system("echo 'Cloning git repo...' && git clone git://github.com/csnip/csnip.git tmp/csnip")
end

task :default => [:get] do
  
database_yml = <<EOF
test:
  adapter: sqlite3
  database: tmp/test.sqlite3
  timeout: 5000
EOF

  File.open("tmp/csnip/config/database.yml", "w") do |f|
    f.puts database_yml
  end

  system("echo 'Building...' && cd tmp/csnip && rake --trace")
end