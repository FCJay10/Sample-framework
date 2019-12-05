# coding: utf-8

Then (/^verify the top navigation header is present$/) do
  topNavParent = $driver.find_element(:xpath, ".//nav[@aria-label='page header' and @role='navigation']")
  courseButton = $driver.find_element(:xpath, ".//nav[@aria-label='page header' and @role='navigation']//button[@data-test-id='learn-menu-dropdown']//span[contains(text(),'Courses')]")
  searchButton = $driver.find_element(:xpath, ".//nav[@aria-label='page header' and @role='navigation']//a[@aria-label='Search for courses, skills, and videos']//span[contains(text(),'Search')]")
  khanAcademyLogo = $driver.find_element(:xpath, ".//nav[@aria-label='page header' and @role='navigation']//a[@aria-label='Khan Academy']")
  donateButton = $driver.find_element(:xpath, ".//nav[@aria-label='page header' and @role='navigation']//a[contains(text(),'Donate')]")
  loginButton = $driver.find_element(:xpath, ".//nav[@aria-label='page header' and @role='navigation']//a[contains(text(),'Login')]")
  signUpButton = $driver.find_element(:xpath, ".//nav[@aria-label='page header' and @role='navigation']//a[contains(text(),'Sign up')]")
end

Then (/^verify the bottom navigation footer mission statement is present$/) do
  $driver.find_element(:xpath, ".//div[@id='footer']//p[contains(text(),'Our mission is to provide a free, world-class education to anyone, anywhere.')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//p[contains(text(),'Khan Academy is a 501(c)(3) nonprofit organization.')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//p[contains(text(),'Khan Academy is a 501(c)(3) nonprofit organization.')]//a[contains(text(),'Donate')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//p[contains(text(),'Khan Academy is a 501(c)(3) nonprofit organization.')]//a[contains(text(),'volunteer')]")
end

Then (/^verify the bottom navigation footer about list is present$/) do
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[1]/h3/a[contains(text(),'About')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[1]/ul//li/a[contains(text(),'News')]")                
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[1]/ul//li/a[contains(text(),'Impact')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[1]/ul//li/a[contains(text(),'Our team')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[1]/ul//li/a[contains(text(),'Our interns')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[1]/ul//li/a[contains(text(),'Our content specialists')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[1]/ul//li/a[contains(text(),'Our leadership')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[1]/ul//li/a[contains(text(),'Our supporters')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[1]/ul//li/a[contains(text(),'Our contributors')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[1]/ul//li/a[contains(text(),'Our finances')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[1]/ul//li/a[contains(text(),'Careers')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[1]/ul//li/a[contains(text(),'Internships')]")
end

Then (/^verify the bottom navigation footer contact list is present$/) do
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[2]//h3[contains(text(),'Contact')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[2]/ul//li/a[contains(text(),'Help center')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[2]/ul//li/a[contains(text(),'Support community')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[2]/ul//li/a[contains(text(),'Share your story')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[2]/ul//li/a[contains(text(),'Press')]")
end

Then (/^verify the bottom navigation footer download apps list is present$/) do
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[3]//h3[contains(text(),'Download our apps')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[3]/ul//li/a[contains(text(),'iOS app')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[3]/ul//li/a[contains(text(),'Android app')]")
end

Then (/^verify the bottom navigation footer courses list is present$/) do
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[4]//h3[contains(text(),'Courses')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[4]/ul//li/a[text()='Math']")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[4]/ul//li/a[contains(text(),'Math by grade')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[4]/ul//li/a[contains(text(),'Science & engineering')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[4]/ul//li/a[contains(text(),'Computing')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[4]/ul//li/a[contains(text(),'Arts & humanities')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[4]/ul//li/a[contains(text(),'Economics & finance')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[4]/ul//li/a[contains(text(),'Test prep')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[4]/ul//li/a[contains(text(),'College, careers, & more')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//div[@aria-label='footer']/ul/li[4]/ul//li/a[contains(text(),'ELA beta')]")  
end

Then (/^verify the bottom navigation footer language select options are present$/) do
  #language picker
  $driver.find_element(:xpath, ".//div[@id='footer']//form//label[contains(text(),'Language')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//form//select[@id='language_picker']")
  $driver.find_element(:xpath, ".//div[@id='footer']//form//a")
                      
  #country links
  $driver.find_element(:xpath, ".//div[@id='footer']//span[contains(text(),'Country')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//a[@href='https://www.khanacademy.org']")
  $driver.find_element(:xpath, ".//div[@id='footer']//a[@href='https://www.khanacademy.org/math/hindi']")
  $driver.find_element(:xpath, ".//div[@id='footer']//a[@href='https://es.khanacademy.org']")
  $driver.find_element(:xpath, ".//div[@id='footer']//a[@href='https://pt.khanacademy.org']")
end

Then (/^verify the bottom navigation footer policies and social media links are present$/) do
  $driver.find_element(:xpath, ".//div[@id='footer']//div[contains(text(),'© 2019 Khan Academy')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//a[contains(text(),'Terms of use')]")
  $driver.find_element(:xpath, ".//div[@id='footer']//a[contains(text(),'Privacy Policy')]")

  #social media links
  $driver.find_element(:xpath, ".//div[@id='footer']//a[@href='https://www.facebook.com/khanacademy']")
  $driver.find_element(:xpath, ".//div[@id='footer']//a[@href='https://twitter.com/khanacademy']")
  $driver.find_element(:xpath, ".//div[@id='footer']//a[@href='https://instagram.com/khanacademy']")
end

Then (/^select language "([^"]*)" from the language select menu on the bottom navigation footer$/) do |languageInput|
  $driver.find_element(:xpath, ".//div[@id='footer']//form//select[@id='language_picker']").click
  $driver.find_element(:xpath, ".//option[contains(text(),'"+languageInput+"')]").click
  $driver.find_element(:xpath, ".//div[@id='footer']//form//a").click
end

Then (/^select a course "([^"]*)" from the courses select menu on the top navigation header$/) do |courseInput|
  $driver.find_element(:xpath, ".//nav[@aria-label='page header' and @role='navigation']//button[@data-test-id='learn-menu-dropdown']").click
  $driver.find_element(:xpath, ".//a[@aria-label='"+courseInput+"']").click  
end

Then (/^enter the following words "([^"]*)" and search using the search button on the top navigation header$/) do |searchInput|
  $driver.find_element(:xpath, ".//nav[@aria-label='page header' and @role='navigation']//a[@aria-label='Search for courses, skills, and videos']").send_keys(searchInput)
  $driver.find_element(:xpath, ".//nav[@aria-label='page header' and @role='navigation']//a[@aria-label='Search for courses, skills, and videos']").click
end

Then (/^press the (logo|donate|login|sign up) button from the top navigation header$/) do |buttonInput|
  case buttonInput.downcase      
  when "logo"
    khanAcademyLogo = $driver.find_element(:xpath, ".//nav[@aria-label='page header' and @role='navigation']//a[@aria-label='Khan Academy']").click
  when "donate"
    donateButton = $driver.find_element(:xpath, ".//nav[@aria-label='page header' and @role='navigation']//a[contains(text(),'Donate')]").click
  when "login"
    loginButton = $driver.find_element(:xpath, ".//nav[@aria-label='page header' and @role='navigation']//a[contains(text(),'Login')]").click
  when "sign up"
    signUpButton = $driver.find_element(:xpath, ".//nav[@aria-label='page header' and @role='navigation']//a[contains(text(),'Sign up')]").click
  end
end

Then (/^click on the link with the following words "([^"]*)" on the bottom navigation footer$/) do |linkTextInput|
  $driver.find_element(:xpath, ".//footer//a[contains(text(),'"+linkTextInput+"')]").click
end
