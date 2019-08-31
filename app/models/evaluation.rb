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
#  subject_id :integer
#
# Indexes
#
#  index_evaluations_on_subject_id  (subject_id)
#

class Evaluation < ApplicationRecord
  belongs_to :subject
end
