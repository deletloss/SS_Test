require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome

#user will directed to main page
driver.get "http://automationpractice.com"

#user access CS page
driver.find_element(:id, "contact-link").click;

driver.find_element(:id, "id_contact").click;
   Selenium::WebDriver::Support::Select.new(driver.find_element(:id, "id_contact")).select_by(:text, "Customer service");
   driver.find_element(:id, "id_contact").click;

#driver.find_element(:id, "fileUpload").click;
#driver.find_element(:id, "fileUpload").clear;
#driver.find_element(:id, "fileUpload").send_keys "C:\Users\yvdhi\Desktop\bug attachment";
driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Message'])[1]/following::span[1]").click;
driver.find_element(:id, "email").click;
driver.find_element(:id, "email").clear;
driver.find_element(:id, "email").send_keys "ws1234@mail.com";
driver.find_element(:id, "id_order").click;
driver.find_element(:id, "id_order").clear;
driver.find_element(:id, "id_order").send_keys "2654367387673";
#driver.find_element(:id, "fileUpload").click;
#driver.find_element(:id, "fileUpload").clear;
#driver.find_element(:id, "fileUpload").send_keys "C:\Users\yvdhi\Desktop\bug attachment";
driver.find_element(:id, "message").click;
driver.find_element(:id, "message").clear;
driver.find_element(:id, "message").send_keys "terima kasih";
driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Message'])[1]/following::div[1]").click;
driver.find_element(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='Message'])[1]/following::span[1]").click;

sleep 5
#if this text appear then the test is passed
if
driver.find_element(:class, "container").text.include?" Server Error";
puts "Test failed"
else
puts "Test passed: Page validated"
end