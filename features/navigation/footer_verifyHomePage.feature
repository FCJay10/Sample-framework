@footer_verifyHomePage @smoke
Feature: Verify the footer links and features exist on the home page
	When I land on the home page
	Then I verify the footer links and features exist
  
 	Scenario: Verify the footer links and features exist on the home page
		  When navigate to the following page "https://www.khanacademy.org/"
		  Then verify the bottom navigation footer mission statement is present
		  Then verify the bottom navigation footer about list is present
		  Then verify the bottom navigation footer contact list is present
		  Then verify the bottom navigation footer download apps list is present
		  Then verify the bottom navigation footer courses list is present
		  Then verify the bottom navigation footer language select options are present
		  Then verify the bottom navigation footer policies and social media links are present