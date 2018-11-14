require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome

#user will directed to main page
driver.get "http://automationpractice.com"

#user access login page
driver.find_element(:class, "img-responsive").click

sleep 10

#if this text appear then the test is passed
if
page_url == "http://automationpractice.com/index.php"
puts "Test failed"
else
puts "Test passed: Page validated"
end