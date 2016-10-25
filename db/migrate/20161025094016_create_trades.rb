class CreateTrades < ActiveRecord::Migration[5.0]
  def change
    create_table :trades do |t|
      t.string :epic
      t.integer :number_of_shares
      t.integer :price
      t.integer :value

      t.timestamps
    end
  end
end
