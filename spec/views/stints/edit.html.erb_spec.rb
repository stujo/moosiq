require 'spec_helper'

describe "stints/edit" do
  before(:each) do
    @stint = assign(:stint, stub_model(Stint,
      :band => nil,
      :artist => nil
    ))
  end

  it "renders the edit stint form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", stint_path(@stint), "post" do
      assert_select "input#stint_band[name=?]", "stint[band]"
      assert_select "input#stint_artist[name=?]", "stint[artist]"
    end
  end
end
