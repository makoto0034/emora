class AddNameToTimetable < ActiveRecord::Migration[5.2]
  def change
    add_column :timetables, :name, :string
  end
end
