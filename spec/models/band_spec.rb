require 'spec_helper'

describe Band do

  context "Relationships" do
    it { should belong_to(:user) }
  end

end
