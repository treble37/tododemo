require 'spec_helper'

describe "folders/show" do
  before(:each) do
    @folder = assign(:folder, stub_model(Folder))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
