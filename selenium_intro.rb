require 'selenium-webdriver'

#create a chrome webdriver

chrome_driver = Selenium::WebDriver.for :chrome

chrome_driver.get('http://toolsqa.com/automation-practice-form')

if chrome_driver.find_element(:name, 'firstname').displayed?
  p 'I FOUND IT'
end

chrome_driver.find_element(:name, 'firstname').send_keys('Jameson')
chrome_driver.find_element(:name, 'lastname').send_keys('Brambley')



sleep 10
