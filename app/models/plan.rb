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

class Plan < ApplicationRecord
  belongs_to :subject
end
