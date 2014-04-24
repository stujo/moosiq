require 'spec_helper'

describe "tracks/new" do
  before(:each) do
    assign(:track, stub_model(Track,
      :title => "MyString",
      :seconds => 1,
      :band => nil
    ).as_new_record)
  end

  it "renders new track form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tracks_path, "post" do
      assert_select "input#track_title[name=?]", "track[title]"
      assert_select "input#track_seconds[name=?]", "track[seconds]"
      assert_select "input#track_band_name[name=?]", "track[band_name]"
    end
  end
end
