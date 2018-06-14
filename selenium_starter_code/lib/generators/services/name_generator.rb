require 'faker'

class NameGenerator
  def first_name_random
    Faker::Name.first_name
  end

  def last_name_random
    Faker::Name.last_name
  end
end
