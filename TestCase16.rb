require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome

#user will directed to main page
driver.get "http://automationpractice.com"

#user subscribe with unregistered mail
driver.find_element(:id, "newsletter-input").click
driver.find_element(:id, "newsletter-input").clear
driver.find_element(:id, "newsletter-input").send_keys "hhhtest@mail.com"
driver.find_element(:name, "submitNewsletter").click

sleep 3
#if this text appear then the test is passed
if
driver.find_element(:class => "alert").text.include?("successfully subscribed")
puts "Test passed: Page validated"
else
puts "Test failed"
end