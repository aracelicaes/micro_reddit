class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :body, length: { maximum: 200 }, presence: true
  validates :user, presence: true
  validates :title, presence: true
end
