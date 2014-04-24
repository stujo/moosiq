require 'spec_helper'

describe Stint do

  let(:princess) { Artist.new({name: 'Princess'}) }
  let(:republic) { Band.new({name: 'Republic'}) }
  let(:mactime) { Stint.new({band: republic,
                             artist: princess,
                             start_date: Date.parse('2001-01-01'),
                             end_date: Date.parse('2001-01-02')}) }

  context "Relationships" do
    it "should be for an artist" do
      expect(mactime).to belong_to :artist
    end
    it "should be with a band" do
      expect(mactime).to belong_to :band
    end
  end
end
