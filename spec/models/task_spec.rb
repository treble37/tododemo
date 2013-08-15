require 'spec_helper'

describe Task do
   before(:each) do
    @blank_attr={:description=>"",:duedate=>""}
  end
  it "should reject folders with no name" do
    @blank_task = Task.new(@blank_attr.merge(:duedate=>"7/13/14"))
    @blank_task.should_not be_valid
  end
   it "should reject users with no password" do
    @blank_task = Task.new(@blank_attr.merge(:description=>"Compile list"))
    @blank_task.should_not be_valid
  end
end
