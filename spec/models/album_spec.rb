require 'spec_helper'

describe Album do
  let(:track_cold) { Track.new({title: 'Cold'}) }
  let(:track_frozen) { Track.new({title: 'Frozen'}) }
  let(:album_ice) { Album.new({title: 'Ice', tracks: [track_cold, track_frozen]}) }
  context "Relationships" do
    it "should have many tracks" do
      expect(album_ice).to have_and_belong_to_many :tracks
    end
    it "should have many bands" do
      expect(album_ice).to have_many :bands
    end
  end
end
