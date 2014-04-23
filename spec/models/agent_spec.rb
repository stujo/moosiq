require 'spec_helper'

describe Agent do

  let(:agent_mary){ Agent.new({first_name: 'Mary'})  }
  context "Relationships" do
    it "should have many bands" do
      expect(agent_mary).to have_many :bands
    end
  end

end
