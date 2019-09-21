class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer :number
      t.text :content

      t.timestamps
    end
  end
end
