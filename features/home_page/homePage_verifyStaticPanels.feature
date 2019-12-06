@homePage_verifyStaticPanels
Feature: Verify the panels with links on the home page navigates the user to the correct pages
  When I land on the home page
  
 	Scenario: Verify the panels with links navigate the user to the correct pages
		When navigate to the following page "https://www.khanacademy.org/"
		Then verify the introduction panel on the home page
		Then click the learners link on the introduction panel on the home page
		Then verify the login dialog is displayed
		When navigate to the following page "https://www.khanacademy.org/"
		Then click the teachers link on the introduction panel on the home page
		Then verify the user is on the teachers sign up page
		When navigate to the following page "https://www.khanacademy.org/"
		Then click the districts link on the introduction panel on the home page
	#missing Then I verify the user is on the district page
		When navigate to the following page "https://www.khanacademy.org/"
		Then click the parents link on the introduction panel on the home page
	#missing Then I verify the user is on the parents sign up page

		When navigate to the following page "https://www.khanacademy.org/"
		Then verify the districts panel on the home page
		Then press the districts button on the districts panel on the home page
	#missing Then I verify the user is on the district page

		When navigate to the following page "https://www.khanacademy.org/"
		Then verify the teachers panel on the home page
		Then press the teachers button on the teachers panel on the home page
		Then verify the user is on the teachers sign up page

		When navigate to the following page "https://www.khanacademy.org/"
		Then verify the students panel on the home page
		Then press the students button on the students panel on the home page
		Then verify the login dialog is displayed

		When navigate to the following page "https://www.khanacademy.org/"
		Then verify the donors panel on the home page
		Then press the donors button on the districts panel on the home page
	#missing Then I verify the user is on the donors page

		Then verify the join khan academy panel on the home page
		Then press the give today button on the join khan academy panel on the home page