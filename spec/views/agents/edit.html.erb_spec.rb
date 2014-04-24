require 'spec_helper'

describe "agents/edit" do
  before(:each) do
    @agent = assign(:agent, stub_model(Agent,
      :first_name => "MyString",
      :last_name => "MyString",
      :phone_number => "MyString"
    ))
  end

  it "renders the edit agent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", agent_path(@agent), "post" do
      assert_select "input#agent_first_name[name=?]", "agent[first_name]"
      assert_select "input#agent_last_name[name=?]", "agent[last_name]"
      assert_select "input#agent_phone_number[name=?]", "agent[phone_number]"
    end
  end
end
