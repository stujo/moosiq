class Artist < ActiveRecord::Base
  has_one :super_fan, inverse_of: :artist
  has_many :stints
  has_many :bands, through: :stints
end
