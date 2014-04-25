require 'spec_helper'

describe "stints/new" do
  before(:each) do
    @artist= stub_model(Artist, name: 'kevin')
    @band = stub_model(Band, name: 'bandy')

    @stint= stub_model(Stint,
                       :band => @band,
                       :artist => @artist
    ).as_new_record
  end

  it "renders new stint form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", artist_stints_path(@artist), "post" do
      assert_select "select#stint_band_id[name=?]", "stint[band_id]"
    end
  end
end
