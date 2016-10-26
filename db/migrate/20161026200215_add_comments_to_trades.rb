class AddCommentsToTrades < ActiveRecord::Migration[5.0]
  def change
    add_column :trades, :comments, :string
  end
end
