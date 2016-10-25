class UserSerializer < ActiveModel::Serializer
  has_many :trades
  attributes :id, :username, :full_name

  def full_name
    "#{object.first_name} #{object.last_name}"
  end
end
