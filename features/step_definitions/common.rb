Then (/^sleep "([^"]*)" seconds$/) do |secondsInput|
  sleep secondsInput.to_i
end

Then (/^navigate to the following page "([^"]*)"$/) do |pageInput|
  $driver.get(pageInput)
end
