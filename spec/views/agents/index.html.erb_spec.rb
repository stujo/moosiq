require 'spec_helper'

describe "agents/index" do
  before(:each) do
    assign(:agents, [
      stub_model(Agent,
        :first_name => "John",
        :last_name => "Smith",
        :phone_number => "444"
      ),
      stub_model(Agent,
        :first_name => "Billy",
        :last_name => "Bob",
        :phone_number => "555"
      )
    ])
  end

  it "renders a list of agents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "John Smith".to_s, :count => 1
    assert_select "tr>td", :text => "Billy Bob".to_s, :count => 1
    assert_select "tr>td", :text => "444".to_s, :count => 1
    assert_select "tr>td", :text => "555".to_s, :count => 1
  end
end
