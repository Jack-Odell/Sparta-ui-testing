require_relative 'services/dob_generator'
require_relative 'services/email_generator'
require_relative 'services/name_generator'
require_relative 'services/username_generator'
require_relative 'services/country_generator'

class GeneratorIo
  def dob_generator
    DobGenerator.new
  end

  def email_generator
    EmailGenerator.new
  end

  def name_generator
    NameGenerator.new
  end

  def username_generator
    UsernameGenerator.new
  end

  def country_generator
    CountryGenerator.new
  end
end
