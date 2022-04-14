class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :user, presence: true
  validates :title, :body, presence: true
end
