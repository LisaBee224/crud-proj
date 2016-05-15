class User < ActiveRecord::Base
  has_secure_password
  has_many :lists

  validates :email, presence: true
  validates :username, presence: true
end
