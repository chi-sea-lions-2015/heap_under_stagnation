class Question < ActiveRecord::Base
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
  has_many :answers
  belongs_to :asker, class_name: "User", foreign_key: "user_id"
end
