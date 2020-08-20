class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :body, length: { maximum: 200 }
  validates :user, presence: true
end
