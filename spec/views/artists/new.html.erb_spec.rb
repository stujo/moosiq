require 'spec_helper'

describe "artists/new" do
  before(:each) do
    assign(:artist, stub_model(Artist,
      :name => "MyString",
      :super_fan => nil
    ).as_new_record)
  end

  it "renders new artist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", artists_path, "post" do
      assert_select "input#artist_name[name=?]", "artist[name]"
      assert_select "input#artist_super_fan[name=?]", "artist[super_fan]"
    end
  end
end
