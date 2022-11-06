class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :pantry_items
  has_many :ingredients, through: :pantry_items
end
