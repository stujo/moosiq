require 'spec_helper'

describe "stints/show" do
  before(:each) do
    @stint = assign(:stint, stub_model(Stint,
      :band => nil,
      :artist => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
