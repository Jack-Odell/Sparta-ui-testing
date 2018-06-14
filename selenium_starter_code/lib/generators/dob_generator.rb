require 'faker'

class DobGenerator
  def day_random
    rand(1..31).to_s
  end

  def month_random
    rand(1..12).to_s
  end

  def year_random
    rand(1950..2014).to_s
  end
end
