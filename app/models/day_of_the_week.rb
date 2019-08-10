# == Schema Information
#
# Table name: day_of_the_weeks
#
#  id         :integer          not null, primary key
#  code       :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DayOfTheWeek < ApplicationRecord
  has_many :schedules
  belongs_to :timetable_cell
end
