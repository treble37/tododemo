require 'spec_helper'

describe "Pages" do
  describe "home page" do
    it "should have content 'Todo'" do
      visit "/pages/home"
      page.should have_content("Todo Demo")
    end
  end
  describe "about page" do
    it "should have content 'Todo'" do
      visit "/pages/about"
      page.should have_content("Todo Demo")
    end
  end
end
