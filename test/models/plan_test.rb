# == Schema Information
#
# Table name: plans
#
#  id         :integer          not null, primary key
#  content    :text
#  number     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  subject_id :integer
#

require 'test_helper'

class PlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
