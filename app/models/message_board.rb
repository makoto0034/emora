# == Schema Information
#
# Table name: message_boards
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#
# Indexes
#
#  index_message_boards_on_category_id  (category_id)
#

class MessageBoard < ApplicationRecord
  belongs_to :category
  validates :name,{presence:true}
end
