ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'
require 'simplecov'
require 'minitest/reporters'

class ActiveSupport::TestCase
  include Capybara::DSL
  SimpleCov.start("rails")
  Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]
  fixtures :all
end
