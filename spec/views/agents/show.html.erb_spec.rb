require 'spec_helper'

describe "agents/show" do
  before(:each) do
    @agent = assign(:agent, stub_model(Agent,
      :first_name => "First Name",
      :last_name => "Last Name",
      :phone_number => "Phone Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Phone Number/)
  end
end
