require 'spec_helper'

describe "stints/index" do
  before(:each) do
    assign(:stints, [
      stub_model(Stint,
        :band => nil,
        :artist => nil
      ),
      stub_model(Stint,
        :band => nil,
        :artist => nil
      )
    ])
  end

  it "renders a list of stints" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
