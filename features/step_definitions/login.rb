# coding: utf-8

require 'rspec/expectations'

Then (/^verify the login dialog is displayed$/) do
  $driver.find_element(:xpath, ".//label[contains(text(),'Email or username')]")
  $driver.find_element(:xpath, ".//form[1]//input[@type='text']")
  $driver.find_element(:xpath, ".//label[contains(text(),'Password')]")
  $driver.find_element(:xpath, ".//form[1]//input[@type='password']")
end

