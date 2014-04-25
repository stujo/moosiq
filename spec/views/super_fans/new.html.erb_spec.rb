require 'spec_helper'

describe "super_fans/new" do
  before(:each) do
    @artist = assign(:artist,
                     stub_model(Artist,
                                :name => "BandName2"))

    assign(:super_fan, stub_model(SuperFan,
      :first_name => "First",
      :last_name => "Last",
      :artist => @artist,
      :parole_officer => "PO"
    ).as_new_record)
  end

  it "renders new super_fan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", artist_super_fans_path(@artist), "post" do
      assert_select "input#super_fan_first_name[name=?]", "super_fan[first_name]"
      assert_select "input#super_fan_last_name[name=?]", "super_fan[last_name]"
      assert_select "input#super_fan_parole_officer[name=?]", "super_fan[parole_officer]"
    end
  end
end
