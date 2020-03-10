class CreateMessageBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :message_boards do |t|
      t.string :name
      t.string :detail
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
