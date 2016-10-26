class UserSerializer < ActiveModel::Serializer
  has_many :trades
  attributes :id, :username
end
