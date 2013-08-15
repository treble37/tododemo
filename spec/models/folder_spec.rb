require 'spec_helper'

describe Folder do
  before(:each) do
    @blank_attr={:name=>"",:todouser_id=>""}
  end
  it "should reject folders with no name" do
    @blank_folder = Folder.new(@blank_attr.merge(:todouser_id=>5))
    @blank_folder.should_not be_valid
  end
   it "should reject users with no password" do
    @blank_folder = Folder.new(@blank_attr.merge(:name=>"Kevin"))
    @blank_folder.should_not be_valid
  end
end
