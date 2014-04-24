require 'spec_helper'

describe "tracks/show" do
  before(:each) do
    @track = assign(:track, stub_model(Track,
      :title => "Title",
      :seconds => 1,
      :band => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(//)
  end
end
