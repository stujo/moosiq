class Band < ActiveRecord::Base
  belongs_to :agent
  has_many :tracks
  has_many :albums, through: :tracks
end
