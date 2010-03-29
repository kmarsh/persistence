require 'rubygems'
require 'sinatra'

get '/' do
  "Hello from Sinatra on Heroku!"
end

post '/build' do
  params.inspect
end