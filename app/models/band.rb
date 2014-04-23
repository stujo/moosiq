class Band < ActiveRecord::Base
  belongs_to :agent
  has_many :tracks
end
