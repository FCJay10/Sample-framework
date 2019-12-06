@header_searchBar @smoke
Feature: Enter search words into the top navigation search bar and verify the user lands on the search results page
	When I land on the home page
	Then I enter search words into the top navigation search bar
	Then I verify the user lands on the search results page
  
 	Scenario: Enter search words into the top navigation search bar and verify the user lands on the search results page
		  When navigate to the following page "https://www.khanacademy.org/"
		  Then pause 2 seconds
		  Then enter the following words "math" and search using the search button on the top navigation header
		  Then pause 2 seconds
		  Then verify the search results page has results