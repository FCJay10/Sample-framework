@footer_selectLanguage @smoke
Feature: Verify the user can select a new language from the footer on the home page
	When I land on the home page
	Then I select a new language from the footer
  
 	Scenario: Verify the user can select a new language from the footer on the home page
		  #When navigate to the following page "https://www.khanacademy.org/"
		  When navigate to the following page "file:///Users/realme/Downloads/Khan%20Academy%20_%20Free%20Online%20Courses,%20Lessons%20&%20Practice.htm"
		  Then select language "English" from the language select menu on the bottom navigation footer
		  Then verify the introduction panel on the home page