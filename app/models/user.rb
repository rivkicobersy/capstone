class User < ApplicationRecord
  has_secure_password

  has_many :pantry_items
  has_many :ingredients, through: :pantry_items
end
