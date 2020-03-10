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

require 'test_helper'

class MessageBoardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
