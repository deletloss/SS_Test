require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome

#user will directed to main page
driver.get "http://automationpractice.com"

#user access login page
driver.find_element(:link_text,'Sign in').click;

#user enter credential to login
driver.find_element(:id, "email").clear
driver.find_element(:id, "email").send_keys "ws12345@mail.com"
driver.find_element(:id, "passwd").click
driver.find_element(:id, "passwd").clear
driver.find_element(:id, "passwd").send_keys "jajal234"
driver.find_element(:id,"SubmitLogin").click;

sleep 20

#if this text appear then the test is passed
puts "Test passed: Page validated"
