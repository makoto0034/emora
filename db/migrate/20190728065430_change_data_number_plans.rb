class ChangeDataNumberPlans < ActiveRecord::Migration[5.2]
  def change
    change_column :plans, :number, :integer
  end
end
