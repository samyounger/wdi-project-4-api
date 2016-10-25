class AddTradeTypeToTrade < ActiveRecord::Migration[5.0]
  def change
    add_column :trades, :trade_type, :integer
    add_index :trades, :trade_type
  end
end
