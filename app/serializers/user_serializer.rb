class UserSerializer < ActiveModel::Serializer
  attributes :id,:email, :carts, :wish_lists
end
