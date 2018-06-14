require 'selenium-webdriver'
require_relative '../lib/selenium_demoqa_registration_io'
require_relative '../lib/generators/username_generator'
require_relative '../lib/generators/name_generator'
require_relative '../lib/generators/dob_generator'
require_relative '../lib/generators/email_generator'

RSpec.configure do |config|
  config.formatter = :documentation
end
