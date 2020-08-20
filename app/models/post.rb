class Post < ApplicationRecord
  belongs_to :user
  validates :body, length: { maximum: 200 }
  validates :user, presence: true
end
