require 'spec_helper'

describe "bands/edit" do
  before(:each) do
    @agent = assign(:agent, stub_model(Agent,
                                        :first_name => "Agent", :last_name => "Jones"
    ))
    @band = assign(:band, stub_model(Band,
      :name => "MyString",
      :agent => @agent
    ))
  end

  it "renders the edit band form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", band_path(@band), "post" do
      assert_select "input#band_name[name=?]", "band[name]"
      assert_select "input#band_agent_name[name=?]", "band[agent_name]"
    end
  end
end
