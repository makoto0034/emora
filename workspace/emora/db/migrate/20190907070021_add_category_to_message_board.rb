class AddCategoryToMessageBoard < ActiveRecord::Migration[5.2]
  def change
    add_reference :message_boards, :category, foreign_key: true
  end
end
