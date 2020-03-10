class AddOtherToReading < ActiveRecord::Migration[5.2]
  def change
    add_column :readings, :other, :text
  end
end
