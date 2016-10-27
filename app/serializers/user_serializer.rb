class UserSerializer < ActiveModel::Serializer
  has_many :trades
  attributes :id, :username, :trades_by_epic
end
