class AddOthersToReadingsAndTextbooks < ActiveRecord::Migration[5.2]
  def change
    add_column :readings, :others, :text
    add_column :textbooks, :others, :text
    add_column :readings, :content, :text
    add_column :textbooks, :content, :text
  end
end
