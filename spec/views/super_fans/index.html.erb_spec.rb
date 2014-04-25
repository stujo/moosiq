require 'spec_helper'

describe "super_fans/index" do
  before(:each) do
    @artist = assign(:artist,
                     stub_model(Artist,
                                :name => "BandName"))
    assign(:super_fans, [
        stub_model(SuperFan,
                   :first_name => "First Name",
                   :last_name => "Last Name",
                   :artist => @artist,
                   :parole_officer => "Parole Officer"
        ),
        stub_model(SuperFan,
                   :first_name => "Second",
                   :last_name => "LastSecond",
                   :artist => @artist,
                   :parole_officer => "Parole Officer"
        )
    ])
  end

  it "renders a list of super_fans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name Last Name".to_s, :count => 1
    assert_select "tr>td", :text => "Second LastSecond".to_s, :count => 1
    assert_select "tr>td", :text => "Parole Officer".to_s, :count => 2
  end
end
