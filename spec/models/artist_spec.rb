require 'spec_helper'

describe Artist do
  let(:princess) { Artist.new({name: 'Princess', date_of_birth: Date.parse('1980-02-14')}) }

  context "Relationships" do
    it "should have many stints relationship" do
      expect(princess).to have_many :stints
    end
    it "should have many bands relationship" do
      expect(princess).to have_many :bands
    end
    it "should have_one superfan relationship" do
      expect(princess).to have_one :super_fan
    end
  end
end
