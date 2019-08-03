class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :number
      t.text :content

      t.timestamps
    end
  end
end
