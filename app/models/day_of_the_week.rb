class DayOfTheWeek < ApplicationRecord
  has_many :schedules
  belongs_to :timetable_cell
end
