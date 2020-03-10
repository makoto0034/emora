class CreateSubjectsTimetableCells < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects_timetable_cells do |t|
    t.references :subject
    t.references :timetable_cell  
    end
  end
end
