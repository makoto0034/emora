# == Schema Information
#
# Table name: posts
#
#  id               :integer          not null, primary key
#  content          :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  message_board_id :integer
#  user_id          :integer
#
# Indexes
#
#  index_posts_on_message_board_id  (message_board_id)
#  index_posts_on_user_id           (user_id)
#

class Post < ApplicationRecord
  belongs_to :user
  belongs_to :message_board
end
