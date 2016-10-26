class ChangeTradeValueName < ActiveRecord::Migration[5.0]
  def change
    rename_column :trades, :value, :book_value
  end
end
