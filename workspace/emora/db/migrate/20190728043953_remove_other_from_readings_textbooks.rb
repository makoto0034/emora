class RemoveOtherFromReadingsTextbooks < ActiveRecord::Migration[5.2]
  def up
    remove_column :readings, :other
    remove_column :textbooks, :other
  end

  def down
    add_column :readings, :others, :text
    add_column :textbooks, :others, :text
    add_column :readings, :content, :text
    add_column :textbooks, :content, :text
  end
end
