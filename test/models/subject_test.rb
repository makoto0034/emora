# == Schema Information
#
# Table name: subjects
#
#  id           :integer          not null, primary key
#  contents     :text
#  credit       :string
#  instructor   :string
#  lang         :string
#  name         :string
#  notes        :text
#  notice       :string
#  num          :string
#  objective    :text
#  others       :string
#  outside      :text
#  subject_code :string
#  theme        :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
