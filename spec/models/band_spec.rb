require 'spec_helper'

describe Band do
  let(:band_acdc){ Band.new({name: 'ACDC'})  }

  context "Relationships" do
    it "should belong to agent" do
      expect(band_acdc).to belong_to :agent
    end

    it "should have many tracks" do
      expect(band_acdc).to have_many :tracks
    end

    it "should have many albums" do
      expect(band_acdc).to have_many :albums
    end
  end
end


