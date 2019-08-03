class AddColumnPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :plans, :subject_id, :integer
  end
end
