class TradeSerializer < ActiveModel::Serializer
  attributes :id, :epic, :number_of_shares, :price, :value, :trade_type
end
