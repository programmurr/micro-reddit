class Comment < ApplicationRecord
  validates :body, presence: true, length: { minimum: 3, maximum: 1000 }

  belongs_to :post
  belongs_to :user
end
