class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :username, presence: true, length: { in: 4..12 }, uniqueness: true
end
