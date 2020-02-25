class CreateOrderHistoryItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_history_items do |t|
      t.references :order_history, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
