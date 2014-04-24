class Track < ActiveRecord::Base
  belongs_to :band
  has_and_belongs_to_many :albums
end
