class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  has_many :votes, as: :voteable
  belongs_to :commenter, class_name: "User", foreign_key: "user_id"
end
