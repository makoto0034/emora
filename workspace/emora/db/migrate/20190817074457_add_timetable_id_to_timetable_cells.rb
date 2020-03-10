class AddTimetableIdToTimetableCells < ActiveRecord::Migration[5.2]
  def change
    add_reference :timetable_cells, :timetable, foreign_key: true
  end
end
