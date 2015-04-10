module Voteable
  extend ActiveSupport::Concern
  def total_votes
    self.votes.sum(direction)
  end
end



