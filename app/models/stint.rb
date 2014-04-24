class Stint < ActiveRecord::Base
  belongs_to :band
  belongs_to :artist
end
