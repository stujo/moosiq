require 'spec_helper'

describe "SuperFans" do
  describe "GET /super_fans" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get super_fans_path
      response.status.should be(200)
    end
  end
end
