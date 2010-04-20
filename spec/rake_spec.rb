## http://github.com/nicksieger/ci_reporter

require 'rubygems'
gem 'rspec'
require 'spec'
require 'rake'
require 'mocha'

describe "persistence build:run task" do
  before(:each) do
    @rake = Rake::Application.new
    Rake.application = @rake
    rakefile = File.expand_path(File.dirname(__FILE__) + "/../Rakefile")
    load rakefile
  end

  after(:each) do
    Rake.application = nil
  end

  describe "build:run" do
    it "Smoke test" do
      lambda { @rake["build:run"].invoke }.should_not raise_error
    end

    it "checks out the code" do
      
      @rake["build:run"].invoke
    end
  end
end
