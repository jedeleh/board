class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates_associated :post, :user
  validates :body, presence: true
end
