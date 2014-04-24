class Artist < ActiveRecord::Base
  has_many :stints
  has_many :bands, through: :stints
end
