@footer_selectLink @smoke
Feature: Select a link from the footer
	When I land on the home page
  	Then I select a link from the footer

 	Scenario: Select a link from the footer
		  When navigate to the following page "https://www.khanacademy.org/"
		  Then click on the link with the following words "Careers" on the bottom navigation footer