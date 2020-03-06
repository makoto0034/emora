class CreateDayOfTheWeeks < ActiveRecord::Migration[5.2]
  def change
    create_table :day_of_the_weeks do |t|
      t.string :name
      t.integer :code

      t.timestamps
    end
  end
end
