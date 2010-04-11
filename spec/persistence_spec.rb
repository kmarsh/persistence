# http://iamneato.com/2009/08/01/rspec-and-sinatra-quick-start
require File.join(File.dirname(__FILE__), '..', 'persistence.rb')

require 'rubygems'
require 'sinatra'
require 'rack/test'
require 'spec'
require 'spec/autorun'
require 'spec/interop/test'
require 'mocha'

# set test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

require File.dirname(__FILE__) + '/spec_helper'

describe "Persistence" do
  include Rack::Test::Methods

  def app
    @app ||= Sinatra::Application
  end

  it "should respond to /" do
    get '/'
    last_response.should be_ok
  end

  it "should build a project from POST /build" do
    PersistenceBuilder.expects(:build)
    post '/build'
    last_response.should be_ok
  end
end
