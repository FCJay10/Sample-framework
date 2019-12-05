# coding: utf-8

require 'rspec/expectations'

Then (/^verify the user is on the donations page$/) do
  $driver.find_element(:xpath, ".//div[@id='donate-react-root']//p[contains(text(),'Help us do more')]")
  $driver.find_element(:xpath, ".//div[@id='donate-react-root']//p[contains(text(),'Gifts through midnight Dec 31 will be matched. Give now!')]")
  missionParagraph = $driver.find_element(:xpath, ".//div[@id='donate-react-root']//div[contains(@class,'mission')]//p[2]").text
compareText = %Q{We'll get right to the point: we're asking you to help. Khan Academy is a nonprofit that relies on support from people like you. If everyone reading this gives $10 monthly, we can continue to thrive for years.}

 expect(missionParagraph == compareText).to be true
end
