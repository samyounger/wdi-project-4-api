class TradeSerializer < ActiveModel::Serializer
  attributes :id, :epic, :exchange, :number_of_shares, :price, :book_value, :trade_type, :sale_value, :comments
end
