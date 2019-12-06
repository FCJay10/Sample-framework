@footer_selectLanguage @smoke
Feature: Verify the user can select a new language from the footer on the home page
	When I land on the home page
	Then I select a new language from the footer
  
 	Scenario: Verify the user can select a new language from the footer on the home page
		  When navigate to the following page "https://www.khanacademy.org/"
		  Then pause 2 seconds
		  Then select language "English" from the language select menu on the bottom navigation footer
		  Then pause 2 seconds
		  Then verify the introduction panel on the home page