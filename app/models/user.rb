class User < ApplicationRecord
  has_many :carts
  has_many :wish_lists

  has_many :products, through: :carts
  has_many :products, through: :wish_lists
end
