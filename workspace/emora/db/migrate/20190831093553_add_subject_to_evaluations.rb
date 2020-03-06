class AddSubjectToEvaluations < ActiveRecord::Migration[5.2]
  def change
    add_reference :evaluations, :subject, foreign_key: true
  end
end
