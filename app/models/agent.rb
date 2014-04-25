class Agent < ActiveRecord::Base
  has_many :bands, inverse_of: :agent

  def full_name
    "#{first_name} #{last_name}"
  end
end
