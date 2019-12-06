# coding: utf-8

require 'rspec/expectations'

Then (/^verify the user is on the “([^"]*)” course landing page$/) do |courseInput|
  $driver.find_element(:xpath, ".//h1[contains(text(),'"+courseInput+"')]")
end
