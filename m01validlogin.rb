require 'rubygems'
require 'selenium-webdriver'

#Firefox browser instantiation
driver = Selenium::WebDriver.for :chrome

#Loading the assertselenium URL
driver.get "https://staging.mokapos.com"

#Click the Login link
logins = driver.find_element(:css, ".LOGIN")
logins.click

#Input Email & Password
userMail = driver.find_element(:id, "loginEmail")
userPassword = driver.find_element(:id, "loginPassword")
loginBtn = driver.find_element(:css, ".btn.btn-primary.btn-block")
userMail.send_keys "dhimas25staging@mailinator.com"
userPassword.send_keys "123456"
loginBtn.click

#Quitting the browser
driver.quit

#If your Firefox is installed in a non-default location
#Use this before creating the driver
#Selenium::WebDriver::Firefox.path = "/path/to/firefox"