require 'spec_helper'

describe Todouser do
  before(:each) do
    @blank_attr={:email=>"",:password=>""}
  end
  it "should reject users with no email" do
    @blank_user = Todouser.new(@blank_attr.merge(:password=>"password"))
    @blank_user.should_not be_valid
  end
   it "should reject users with no password" do
    @blank_user = Todouser.new(@blank_attr.merge(:email=>"example@gmail.com"))
    @blank_user.should_not be_valid
  end
end
