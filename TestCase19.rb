require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome

#user will directed to main page
driver.get "http://automationpractice.com"

#user access TOU page
driver.find_element(:link, "Terms and conditions of use").click;

sleep 5
#if this text appear then the test is passed
if
driver.find_element(:class => "columns-container").text.include?("Terms and conditions of use")
puts "Test passed: Page validated"
else
puts "Test failed"
end