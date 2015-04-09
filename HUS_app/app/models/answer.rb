class Answer < ActiveRecord::Base
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
  belongs_to :question
end
