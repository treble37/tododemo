Feature: User sign-in
	As an existing user
	I would like to sign in

	Background:
		Given I exist as a user
	  And I visit the signin page

	Scenario: User signs in succesfully
		When I sign in with the correct login information
		Then I should see a success message

	Scenario: User signs in unsuccesfully with wrong user email
		When I sign in with the incorrect user email
		Then I should see an error message

	Scenario: User signs in unsuccesfully with wrong password
		When I sign in with the incorrect password
		Then I should see an error message