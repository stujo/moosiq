require 'spec_helper'

describe Band do
  let(:band_acdc){ Band.new({name: 'ACDC'})  }

  context "Relationships" do
    it "should belong to agent" do
      expect(band_acdc).to belong_to :agent
    end
  end

end
