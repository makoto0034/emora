# == Schema Information
#
# Table name: evaluations
#
#  id         :integer          not null, primary key
#  criteria   :string
#  kind       :string
#  portion    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class EvaluationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
