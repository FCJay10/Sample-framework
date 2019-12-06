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

Then (/^verify the user is on the learners sign up page$/) do
  $driver.find_element(:xpath, ".//div[@id='login-signup-root']//h1[contains(text(),'A world class education for anyone, anywhere. 100% free.')]")
  $driver.find_element(:xpath, ".//div[@id='login-signup-root']//h2[contains(text(),'Join Khan Academy to get personalized help with what you’re studying or to learn something completely new. We’ll save all of your progress.')]")
 
  signUpText = $driver.find_element(:xpath, ".//div[@id='login-signup-root']//div/div[3]/section[1]/div/div/span/div/div/span").text
compareText = %Q{By signing up for Khan Academy, you agree to our Terms of use and Privacy Policy.}

 expect(signUpText == compareText).to be true
end

Then (/^verify the user is on the parents sign up page$/) do
  $driver.find_element(:xpath, ".//h1[contains(text(),'First, create your parent account.')]")
  $driver.find_element(:xpath, ".//h2[contains(text(),'Khan Academy is a great way for your child to get help with what they’re learning in school or to learn something completely new.')]")
 
  signUpText = $driver.find_element(:xpath, ".//div[@id='login-signup-root']//div/div[3]/section[1]/div/div/span/div/div/span").text
compareText = %Q{By signing up for Khan Academy, you agree to our Terms of use and Privacy Policy.}

 expect(signUpText == compareText).to be true
end
