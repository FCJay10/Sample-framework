# coding: utf-8

require 'rspec/expectations'

Then (/^verify the user is on the district page$/) do
  $driver.find_element(:xpath, "//*[@id='app-shell-root']/div/div[3]/div/div/div[1]/div[1]/div[3]/div//h1[contains(text(),'Upgrade to Khan Academy Districts and accelerate learning for every student')]")
  $driver.find_element(:xpath, "//*[@id='app-shell-root']/div/div[3]/div/div/div[1]/div[1]/div[3]/div//.//p[contains(text(),'Individual teachers around the country are seeing incredible student gains with Khan Academy. Upgrade and receive the training, support, and analytics necessary to bring Khan Academy to every classroom in your district.')]")
$driver.find_element(:xpath, " //*[@id='app-shell-root']/div/div[3]/div/div/div[1]/div[1]/div[3]/div//a[@href='https://khanacademy.typeform.com/to/R6uAig']")
end
