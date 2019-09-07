class CreateMessageBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :message_boards do |t|
      t.string :name

      t.timestamps
    end
  end
end
