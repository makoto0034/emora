class CreateReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :readings do |t|
      t.string :author
      t.string :title
      t.string :publisher
      t.string :year
      t.string :isbn

      t.timestamps
    end
  end
end
