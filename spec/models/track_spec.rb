require 'spec_helper'

describe Track do
  let(:band_discokings){ Band.new({name: 'Disco Kings'})  }
  let(:track_disconoise){ Track.new({title: 'Disco Noise', seconds: 321, band: band_discokings})  }

  context "Relationships" do
    it "should belong to band" do
      expect(track_disconoise).to belong_to :band
    end

    it "should belong to band" do
      expect(track_disconoise).to belong_to :band
    end
  end
end
