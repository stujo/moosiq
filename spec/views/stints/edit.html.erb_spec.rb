require 'spec_helper'

describe "stints/edit" do
  before(:each) do
    @stint = assign(:stint, stub_model(Stint,
                                       :band => stub_model(Band, :name => 'myband'),
                                       :artist => stub_model(Artist, :name => 'mary')
    ))
  end

  it "renders the edit stint form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
      assert_select "form[action=?][method=?]", artist_stint_path(@stint.artist, @stint), "post" do
      assert_select "select#stint_band_id[name=?]", "stint[band_id]"
    end
  end
end
