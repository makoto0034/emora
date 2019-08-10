class CreateTimetableCells < ActiveRecord::Migration[5.2]
  def change
    create_table :timetable_cells do |t|
      t.references :period
      t.references :day_of_the_week
      t.references :subject

      t.timestamps
    end
  end
end
