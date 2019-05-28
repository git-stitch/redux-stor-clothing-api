class Product < ApplicationRecord
  has_many :carts
  has_many :wish_lists

  has_many :users, through: :carts
  has_many :users, through: :wish_lists
end
