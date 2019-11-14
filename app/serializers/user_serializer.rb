class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :goals
end
