require 'spec_helper'

describe "Folders" do
  # describe "GET /folders" do
  #   it "works! (now write some real specs)" do
  #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #     get folders_path
  #     response.status.should be(200)
  #   end
  # end
  before(:each) do
    @todouser=Factory.create(:todouser)
    @folder = Factory.create(:folder, todouser: @todouser)
  end
  context "create tasks" do
    it "should allow user to create a task associated with a folder" do
      visit new_todouser_session_path
      fill_in "Email", with: @todouser.email
      fill_in "Password", with: @todouser.password
      click_button "Sign in"
      visit todouser_folder_tasks_path(@todouser,@folder)
      click_link "Show"
      click_link "New Task"
      fill_in "task_description", with: "task blah blah"
      fill_in "task_duedate", with: "7/13/31"
      click_button "Create Task"
      page.should have_content("task blah blah")
    end
  end
end
