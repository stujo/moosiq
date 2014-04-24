class Agent < ActiveRecord::Base
  has_many :bands

  def full_name
    first_name + " " + last_name
  end
end
