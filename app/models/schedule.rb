# == Schema Information
#
# Table name: schedules
#
#  id                 :integer          not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  day_of_the_week_id :integer
#  period_id          :integer
#  semester_id        :integer
#  subject_id         :integer
#
# Indexes
#
#  index_schedules_on_day_of_the_week_id  (day_of_the_week_id)
#  index_schedules_on_period_id           (period_id)
#  index_schedules_on_semester_id         (semester_id)
#  index_schedules_on_subject_id          (subject_id)
#

class Schedule < ApplicationRecord
  belongs_to :semester
  belongs_to :day_of_the_week
  belongs_to :period
  belongs_to :subject
end
