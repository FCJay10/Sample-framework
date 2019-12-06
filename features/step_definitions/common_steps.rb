Then (/^navigate to the following page "([^"]*)"$/) do |pageInput|
  $driver.get(pageInput)
end

Then (/^pause ([^"]*) seconds$/) do |seconds|
  sleep seconds.to_i
end
