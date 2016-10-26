class AddExchangeToTrades < ActiveRecord::Migration[5.0]
  def change
    add_column :trades, :exchange, :string
  end
end
