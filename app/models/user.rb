class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 30 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 12, maximum: 50 }

  has_many :posts
  has_many :comments
end
