# == Schema Information
#
# Table name: timetable_cells
#
#  id                 :integer          not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  day_of_the_week_id :integer
#  period_id          :integer
#  subject_id         :integer
#
# Indexes
#
#  index_timetable_cells_on_day_of_the_week_id  (day_of_the_week_id)
#  index_timetable_cells_on_period_id           (period_id)
#  index_timetable_cells_on_subject_id          (subject_id)
#

class TimetableCell < ApplicationRecord
  belongs_to :timetable
  belongs_to :period
  belongs_to :day_of_the_week
  has_and_belongs_to_many :subjects

end
