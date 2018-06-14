require 'selenium-webdriver'
require_relative '../lib/selenium_demoqa_registration_io'
require_relative '../lib/generators/generator_io'

RSpec.configure do |config|
  config.formatter = :documentation
end
