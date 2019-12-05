# coding: utf-8

require 'rspec/expectations'

Then (/^verify the introduction panel on the home page$/) do
  introHeader = $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[1]//h1").text
  
compareHeader = %Q{For every student,
every classroom.
Real results.}

expect(introHeader).to eq(compareHeader)

introHeader2 = $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[1]//span[3]").text
expect(introHeader2).to eq("Real results.")

introHeader3 = $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[1]//p[1]/span").text
expect(introHeader3).to eq("We’re a nonprofit with the mission to provide a free, world-class education for anyone, anywhere.")

$driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[1]//a//span//div[contains(text(),'Learners')]")
$driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[1]//a//span//div[contains(text(),'Teachers')]")
$driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[1]//a//span//div[contains(text(),'Districts')]")
$driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[1]//a//span//div[contains(text(),'Parents')]")

end

Then (/^click the (learners|teachers|districts|parents) link on the introduction panel on the home page$/) do |linkInput|
  case linkInput.downcase
  when "learners"
    $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[1]//a[1]").click    
  when "teachers"
    $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[1]//a[2]").click    
  when "districts"
    $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[1]//a[3]").click
  when "parents"
    $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[1]//a[4]").click    
  end
end

Then (/^verify the districts panel on the home page$/) do
  $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[5]//span[text()='DISTRICTS']")
  districtsHeader = $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[5]//h2").text
  
compareHeader = %Q{Khan Academy boosts
student learning}

expect(districtsHeader).to eq(compareHeader)

  districtsHeader2 = $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[5]//p").text

  expect(districtsHeader2).to eq("In a recent study, students were over twice as likely to meet grade-level standards with Khan Academy. Districts across the country are partnering with us to ensure all their students succeed.")

  districtsHeader2Link = $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[5]//p//a").attribute(:href)
  expect(districtsHeader2Link).to eq("https://www.prnewswire.com/news-releases/khan-academy-introduces-new-mastery-learning-features-300708027.html")
  $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[5]//div[1]/a[contains(@href,'https://www.khanacademy.org/district')]")
end

Then (/^press the districts button on the districts panel on the home page$/) do
 $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[5]//div[1]/a[contains(@href,'https://www.khanacademy.org/district')]").click
end

Then (/^verify the donors panel on the home page$/) do
  $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[9]//span[text()='TOGETHER WE CAN MAKE A DIFFERENCE']")
  donorHeader = $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[9]//h2").text
  
compareHeader = %Q{Every child deserves the chance to learn.}

expect(donorHeader).to eq(compareHeader)

  donorHeader2 = $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[9]//p").text

  expect(donorHeader2).to eq("Across the globe, 617 million children are missing basic math and reading skills. We’re a nonprofit delivering the education they need, and we need your help. You can change the course of a child’s life.")

  $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[9]//div[1]/a[contains(@href,'https://www.khanacademy.org/donors')]")
end

Then (/^press the donors button on the districts panel on the home page$/) do
  $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[9]//div[1]/a[contains(@href,'https://www.khanacademy.org/donors')]").click
end


Then (/^verify the teachers panel on the home page$/) do
  $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[6]//span[text()='TEACHERS']")
  $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[6]//span[text()='DUSTIN FAUTH / 4th grade teacher / Falmouth, MA']")
  teachersHeader = $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[6]//h2").text
  
compareHeader = %Q{“I’m finally able to truly
differentiate my classroom. This has been priceless for my students’ engagement.”}

expect(teachersHeader).to eq(compareHeader)

$driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[6]//p[text()='We empower teachers to support their entire classroom. 90% of US teachers who have used Khan Academy have found us effective.']").text

$driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[6]//span[text()='SOURCE: 2018 ConStat U.S. Online Education Customer Survey']")
end

Then (/^press the teachers button on the teachers panel on the home page$/) do
  $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[6]//a[contains(@href,'https://www.khanacademy.org/signup?isteacher=1')]").click
end

Then (/^verify the students panel on the home page$/) do
  $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[7]//span[text()='LEARNERS AND STUDENTS']")
  $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[7]//p[text()='Build a deep, rock-solid understanding in math, grammar, science, history, SAT®, AP®, and more.']")
  studentsHeader = $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[7]//h2").text
  
compareHeader = %Q{You can learn anything.}

expect(studentsHeader).to eq(compareHeader)

end

Then (/^press the students button on the students panel on the home page$/) do
  $driver.find_element(:xpath, ".//*[@id='app-shell-root']/div/div[3]/div/div/div[7]//a[contains(@href,'https://www.khanacademy.org/signup')]").click
end
