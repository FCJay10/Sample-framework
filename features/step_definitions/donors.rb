# coding: utf-8

require 'rspec/expectations'

Then (/^verify the user is on the donors page$/) do
    donorHeader=$driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[1]/div/div[2]/div/h1").text
  
compareHeader = %Q{Millions of students lack opportunity.
Together, we can give it to them.}

    expect(donorHeader).to eq(compareHeader)
  $driver.find_element(:xpath, ".//span[contains(text(),'We are a nonprofit with the mission to provide a free, world-class education to anyone, anywhere')]")
end
