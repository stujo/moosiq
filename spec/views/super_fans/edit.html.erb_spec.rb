require 'spec_helper'

describe "super_fans/edit" do
  before(:each) do
    @artist =  assign(:artist, stub_model(Artist,
                                             :name => "MyArtist"))
    @super_fan = assign(:super_fan, stub_model(SuperFan,
                                               :first_name => "MyString",
                                               :last_name => "MyString",
                                               :artist => @artist,
                                               :parole_officer => "MyString"
    ))
  end

  it "renders the edit super_fan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", artist_super_fan_path(@super_fan.artist, @super_fan), "post" do
      assert_select "input#super_fan_first_name[name=?]", "super_fan[first_name]"
      assert_select "input#super_fan_last_name[name=?]", "super_fan[last_name]"
      assert_select "input#super_fan_parole_officer[name=?]", "super_fan[parole_officer]"
    end
  end
end
