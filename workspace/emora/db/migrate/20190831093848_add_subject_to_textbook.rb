class AddSubjectToTextbook < ActiveRecord::Migration[5.2]
  def change
    add_reference :textbooks, :subject, foreign_key: true
  end
end
