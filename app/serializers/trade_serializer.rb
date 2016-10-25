class TradeSerializer < ActiveModel::Serializer
  attributes :id, :epic, :exchange, :number_of_shares, :price, :value, :trade_type
end
