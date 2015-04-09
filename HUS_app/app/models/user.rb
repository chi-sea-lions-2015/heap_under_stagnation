class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes

  include BCrypt

  def password
    @password ||= Password.new(self.password_hash)
  end

  def password=(value)
    @password = Password.create(value)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    user if user && user.password == password
  end
end
