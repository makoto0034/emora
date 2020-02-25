class CreateOrderHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :order_histories do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.integer :sum
      t.string :status

      t.timestamps
    end
  end
end
