class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.references :semester, foreign_key: true
      t.references :day_of_the_week, foreign_key: true
      t.references :period, foreign_key: true
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
