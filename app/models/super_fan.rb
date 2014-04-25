class SuperFan < ActiveRecord::Base
  belongs_to :artist, inverse_of: :super_fans
end
