require 'spec_helper'

describe "Stints" do
  context "with Artist" do
    let(:maya) { Artist.find_or_create_by(name: 'Maya') }
    describe "GET /stints" do
      it "Is nested under artist" do
        get artist_stints_path(maya)
        response.status.should be(200)
      end
    end
  end
end
