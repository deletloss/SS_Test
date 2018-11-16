require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome

#user will directed to main page
driver.get "http://automationpractice.com"

#user access About page
driver.find_element(:link, "About us").click;

sleep 3
#if this text appear then the test is passed
if
driver.find_element(:class => "navigation_page").text.include?("About us")
puts "Test passed: Page validated"
else
puts "Test failed"
end
