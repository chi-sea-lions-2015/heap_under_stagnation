class Question < ActiveRecord::Base

  has_many :comments, as: :commentable
  has_many :answers
  belongs_to :asker, class_name: "User", foreign_key: "user_id"

  # validates :title, presence: true, length: { in: 5..50}
  validates :content, presence: true

  def sort_popular
    self.answers.sort_by{|answer| answer.total_votes}.reverse
  end

  include Voteable
end
