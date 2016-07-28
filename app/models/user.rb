class User < ActiveRecord::Base
  include BCrypt
  has_secure_password
  has_many :posts
  has_many :comments
  validates :username, :email, :password, presence: true
end
