class AddDetailsToSubject < ActiveRecord::Migration[5.2]
  def change
    add_column :subjects, :theme, :text
    add_column :subjects, :instructor, :string
    add_column :subjects, :credit, :string
    add_column :subjects, :num, :string
    add_column :subjects, :lang, :string
    add_column :subjects, :notes, :text
    add_column :subjects, :objective, :text
    add_column :subjects, :contents, :text
    add_column :subjects, :outside, :text
    add_column :subjects, :others, :string
    add_column :subjects, :notice, :string
  end
end
