class Band < ActiveRecord::Base
  belongs_to :agent
  has_many :tracks
  has_many :albums, through: :tracks

  # Support for autocomplete agent selection
  # based on:
  # http://railscasts.com/episodes/102-auto-complete-association-revised
  def agent_name
    agent.try(:full_name)
  end

  def agent_name=(full_name)
    if full_name.present?
      bits = full_name.gsub(/\s+/, " ").partition(" ")

      candidate = Agent.where({first_name: bits[0], last_name: bits[2]}).first

      self.agent = candidate
    end
  end
end
