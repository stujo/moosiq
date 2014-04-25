require 'spec_helper'

describe "super_fans/show" do
  before(:each) do
    @super_fan = assign(:super_fan, stub_model(SuperFan,
      :first_name => "First Name",
      :last_name => "Last Name",
      :artist => nil,
      :parole_officer => "Parole Officer"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(//)
    rendered.should match(/Parole Officer/)
  end
end
