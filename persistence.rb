require 'rubygems'
require 'sinatra'
require 'open3'

include Open3
  
get '/' do
  'Persistence, latest build stats would go here'
end

post '/build' do
  PersistanceBuilder.build
end

get '/environment' do
  `which git`
end

class PersistanceBuilder
  def self.build
    stdin, stdout, stderr = popen3('rake')
    
    return "stdout:\n\n#{stdout.read}\n\nstderr:\n\n#{stdout.read}"
  end
end