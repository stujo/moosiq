require 'spec_helper'

describe "SuperFans" do
  context "with Artist" do
    let(:maya) { Artist.find_or_create_by(name: 'Maya') }
    describe "GET /super_fans" do
      it "Is nested under artist" do
        get artist_super_fans_path(maya)
        response.status.should be(200)
      end
    end
  end
end