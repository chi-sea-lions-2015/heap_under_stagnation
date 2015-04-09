class User < ActiveRecord::Base
  include BCrypt

  validates :username, :password, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :email, format: { with: /\w*@\w*.\w*/, message: "email must be a valid email!!" }

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
