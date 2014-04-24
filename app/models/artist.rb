class Artist < ActiveRecord::Base
  has_one :super_fan
  has_many :stints
  has_many :bands, through: :stints
end
