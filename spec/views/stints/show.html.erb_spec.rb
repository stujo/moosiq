require 'spec_helper'

describe "stints/show" do
  before(:each) do
    @artist= stub_model(Artist, name: 'kevin')
    @band = stub_model(Band, name: 'bandy')

    @stint= stub_model(Stint,
                       :band => @band,
                       :artist => @artist
    )
  end

  it "renders stint info" do
    render
    rendered.should match(/kevin/)
    rendered.should match(/joined/)
    rendered.should match(/bandy/)
  end
end
