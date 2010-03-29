require 'rubygems'
require 'sinatra'
require "open3"

include Open3
  
get '/' do
  "Hello from Sinatra on Heroku!"
end

post '/build' do
  PersistanceBuilder.build
end

class PersistanceBuilder
  def self.build
    stdin, stdout, stderr = popen3('rake')
    
    return stdout
  end
end