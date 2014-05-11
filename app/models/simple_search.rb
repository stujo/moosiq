class TrackSearch
  include ActiveModel::Model

  #Generic Search Parameter
  attr_accessor :q
  validates_length_of :q, minimum: 3, message: 'Please enter at least 3 letters to search'

  # Add your other search params or validations here

  def persisted?
    false
  end

  def search_within scope, column_name

    #example where scope: only added when the q param is present
    unless self.q.blank?
      scope = scope.where(column_name: self.q)
    end

    #Add your own filters here

    scope
  end

  def self.get_params
    params.permit(:track_search).permit(:q)
  end
end

