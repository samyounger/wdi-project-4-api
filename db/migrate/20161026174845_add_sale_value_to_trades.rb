class AddSaleValueToTrades < ActiveRecord::Migration[5.0]
  def change
    add_column :trades, :sale_value, :integer
  end
end
