# == Schema Information
#
# Table name: periods
#
#  id         :integer          not null, primary key
#  code       :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Period < ApplicationRecord
  has_many :schedules
  belongs_to :timetable_cell,optional: true
end
