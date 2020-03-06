class AddSubjectToReadings < ActiveRecord::Migration[5.2]
  def change
    add_reference :readings, :subject, foreign_key: true
  end
end
