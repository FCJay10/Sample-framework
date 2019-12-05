# coding: utf-8

require 'rspec/expectations'

Then (/^verify the search results page (has|does not have) results$/) do |existsInput|

case existsInput.downcase

     when "has"
          searchResults = $driver.find_elements(:xpath, ".//div[contains(@class,'gsc-webResult gsc-result')]")
          expect(searchResults.size > 0).to be true
     when "does not have"
          searchResults = $driver.find_elements(:xpath, ".//div[contains(@class,'gsc-webResult gsc-result')]")
          expect(searchResults.size == 0).to be true
end

end
