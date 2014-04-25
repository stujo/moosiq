require 'spec_helper'

describe "stints/index" do
  before(:each) do
    assign(:artist, stub_model(Artist,:name => 'mary'))

    assign(:stints, [
      stub_model(Stint,
        :band => stub_model(Band,:name => 'nband'),
        :artist => @artist
      ),
      stub_model(Stint,
        :band => stub_model(Band,:name => 'uband'),
        :artist => @artist
      )
    ])
  end

  it "renders a list of stints" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 'nband', :count => 1
    assert_select "tr>td", :text => 'uband', :count => 1
  end
end
