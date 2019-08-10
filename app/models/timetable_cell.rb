class TimetableCell < ApplicationRecord
  belongs_to :timetable
  belongs_to :period
  belongs_to :day_of_the_week
  has_and_belongs_to_many :subjects

end
