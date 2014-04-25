require 'spec_helper'

describe "stints/new" do
  before(:each) do
    assign(:stint, stub_model(Stint,
      :band => nil,
      :artist => nil
    ).as_new_record)
  end

  it "renders new stint form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", stints_path, "post" do
      assert_select "input#stint_band[name=?]", "stint[band]"
      assert_select "input#stint_artist[name=?]", "stint[artist]"
    end
  end
end
