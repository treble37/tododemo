###GIVEN###
Given /^I exist as a user$/ do
	@todouser = Factory(:todouser, :email=>"Todouser32@gmail.com")
end
###AND###
And /^I visit the signin page$/ do
  visit new_todouser_session_path
end
###WHEN###
When /^I sign in with the correct login information$/ do
  fill_in "Email", with: @todouser.email
  fill_in "Password", with: @todouser.password
  click_button "Sign in"
end
When /^I sign in with the incorrect user email$/ do
  fill_in "Email", with: "wrong@gmail.com"
  fill_in "Password", with: @todouser.password
  click_button "Sign in"
end
When /^I sign in with the incorrect password$/ do
  fill_in "Email", with: @todouser.email
  fill_in "Password", with: "incorrect_password"
  click_button "Sign in"
end

###THEN###
Then /^I should see a success message$/ do
  page.should have_content "Signed in successfully"
end
Then /^I should see an error message$/ do
  page.should have_content "Invalid email or password"
end