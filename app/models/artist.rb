class Artist < ActiveRecord::Base
  has_many :super_fans, inverse_of: :artist
  has_many :stints
  has_many :bands, through: :stints
end
