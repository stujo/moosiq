require 'spec_helper'

describe "tracks/index" do
  before(:each) do
    assign(:tracks, [
      stub_model(Track,
        :title => "Title",
        :seconds => 1,
        :band => nil
      ),
      stub_model(Track,
        :title => "Title",
        :seconds => 1,
        :band => nil
      )
    ])
  end

  it "renders a list of tracks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
