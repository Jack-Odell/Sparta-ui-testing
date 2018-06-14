require 'faker'
require_relative 'dob_generator'
require_relative 'name_generator'

class UsernameGenerator
  def user_random(first_name, last_name, year)
    first_name + last_name + year
  end
end
