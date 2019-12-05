@header_verifyLinks @smoke
Feature: Verify the top navigation header’s links are working
	When I land on the homepage
	Then I select a course from the courses list and verify the user lands on the correct page
	Then I verify the logo navigates the user to the correct page
	Then I verify the donate link navigates the user to the correct page
	Then I verify the login link navigates the user to the correct page
	Then I verify the sign up link navigates the user to the correct page

  
 	Scenario: Verify the top navigation header’s links are working
		When navigate to the following page "https://www.khanacademy.org/"
		Then select a course "Algebra 1" from the courses select menu on the top navigation header
		#missing Then I verify the user is on the “Algebra 1” course landing page
		When navigate to the following page "https://www.khanacademy.org/"
		Then press the logo button from the top navigation header
		Then verify the introduction panel on the home page
		When navigate to the following page "https://www.khanacademy.org/"
		Then press the donate button from the top navigation header
		Then verify the user is on the donations page
		When navigate to the following page "https://www.khanacademy.org/"
		Then press the login button from the top navigation header
		Then verify the login dialog is displayed
		When navigate to the following page "https://www.khanacademy.org/"
		Then press the sign up button from the top navigation header
		Then verify the login dialog is displayed