class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.string :kind
      t.string :portion
      t.string :criteria

      t.timestamps
    end
  end
end
