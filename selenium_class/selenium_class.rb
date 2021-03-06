require 'selenium-webdriver'

class SeleniumQaToolsForm

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @practice_form_url = 'http://toolsqa.com/automation-practice-form'
    @firstname_field = 'firstname'
    @lastname_field = 'lastname'
    @gender_radio_id = 'sex-'
    @year_exp_id = 'exp-'
    @date_id = 'datepicker'
    @profession_id = 'profession-'
    @tool_id = 'tool-'
    @dropdown_id = 'continents'
    @command_id = 'selenium_commands'
    @submit_id = 'submit'
  end

  def visit_practice_form
    @chrome_driver.get(@practice_form_url)
  end

  def input_firstname_field(name)
    @chrome_driver.find_element(:name, @firstname_field).send_keys(name)
  end

  def input_lastname_field(name)
    @chrome_driver.find_element(:name, @lastname_field).send_keys(name)
  end

  def gender_radio_click(gender)
    @chrome_driver.find_element(:id, @gender_radio_id + gender).click()
  end

  def years_exp_click(year)
    @chrome_driver.find_element(:id, @year_exp_id + year).click()
  end

  def input_date_field(date)
    @chrome_driver.find_element(:id, @date_id).send_keys(date)
  end

  def profession_click(num)
    @chrome_driver.find_element(:id, @profession_id + num).click()
  end

  def tool_click(num)
    @chrome_driver.find_element(:id, @tool_id + num).click()
  end

  def continent_select(continent)
    dropdown = @chrome_driver.find_element(:id, @dropdown_id)
    option = Selenium::WebDriver::Support::Select.new(dropdown)
    option.select_by(:text, continent)
  end

  def command_select(command)
    dropdown = @chrome_driver.find_element(:id, @command_id)
    option = Selenium::WebDriver::Support::Select.new(dropdown)
    option.select_by(:text, command)
  end

  def submit_click
    @chrome_driver.find_element(:id, @submit_id).click()
  end
end

test = SeleniumQaToolsForm.new

test.visit_practice_form
test.input_firstname_field('Greg')
test.input_lastname_field('Peterson')
test.gender_radio_click('0')
test.gender_radio_click('1')
test.years_exp_click('0')
test.years_exp_click('1')
test.years_exp_click('2')
test.years_exp_click('3')
test.years_exp_click('4')
test.years_exp_click('5')
test.years_exp_click('6')
test.input_date_field('10/05/2056')
test.profession_click('0')
test.profession_click('1')
test.tool_click('0')
test.tool_click('1')
test.tool_click('2')
test.continent_select('Australia')
test.continent_select('Asia')
test.continent_select('Europe')
test.continent_select('Africa')
test.continent_select('North America')
test.continent_select('South America')
test.continent_select('Antartica')
test.command_select('Browser Commands')
test.command_select('Navigation Commands')
test.command_select('Switch Commands')
test.command_select('Wait Commands')
test.command_select('WebElement Commands')
sleep 1
test.submit_click

sleep 5
