require 'spec_helper'

describe SuperFan do
  let(:princess) { Artist.new({name: 'Princess'}) }
  let(:fanboy) { SuperFan.new({first_name: 'Fan', last_name: 'Boy', artist: princess, parole_officer: 'Simon Jones'}) }

  context "Relationships" do
    it "should belong to artist relationship" do
      expect(fanboy).to belong_to :artist
    end
  end
end
