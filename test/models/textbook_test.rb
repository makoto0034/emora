# == Schema Information
#
# Table name: textbooks
#
#  id         :integer          not null, primary key
#  author     :string
#  content    :text
#  isbn       :string
#  others     :text
#  publisher  :string
#  title      :string
#  year       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  subject_id :integer
#
# Indexes
#
#  index_textbooks_on_subject_id  (subject_id)
#

require 'test_helper'

class TextbookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
