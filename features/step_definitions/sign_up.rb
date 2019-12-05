# coding: utf-8

require 'rspec/expectations'

Then (/^verify the user is on the teachers sign up page$/) do
  $driver.find_element(:xpath, ".//div[@id='login-signup-root']//h1[contains(text(),'Help every student succeed with personalized practice. 100% free.')]")

  signUpText = $driver.find_element(:xpath, ".//div[@id='login-signup-root']//h2").text
compareText = %Q{Find standards-aligned content
Assign practice exercises, videos and articles
Track student progress
Join millions of teachers and students}

 expect(signUpText == compareText).to be true

  signUpText2 = $driver.find_element(:xpath, ".//div[@id='login-signup-root']//section[1]//span//span").text
compareText = %Q{By signing up for Khan Academy, you agree to our Terms of use and Privacy Policy.}

 expect(signUpText2 == compareText).to be true
end
