# == Schema Information
#
# Table name: readings
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
#  index_readings_on_subject_id  (subject_id)
#

class Reading < ApplicationRecord
  belongs_to :subject
end
