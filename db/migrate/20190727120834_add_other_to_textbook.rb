class AddOtherToTextbook < ActiveRecord::Migration[5.2]
  def change
    add_column :textbooks, :other, :text
  end
end
