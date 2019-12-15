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

class Subject < ApplicationRecord
  has_many :schedules
  has_many :plans
  has_many :evaluations
  has_many :textbooks
  has_many :readings
  has_and_belongs_to_many :timetable_cell

  def self.search(name,instructor,subject_code,subject_num,day_of_the_week,period,semester)
    @subjects = Subject.joins(:schedules).all
    @subjects = @subjects.where('name LIKE ?',"%#{name}%")
    @subjects = @subjects.where('instructor LIKE ?',"%#{instructor}%")
    @subjects = @subjects.where('subject_code LIKE ?',"%#{subject_code}%")
    @subjects = @subjects.where('num LIKE ?',"#{subject_num}%")
    @subjects = @subjects.where('day_of_the_week_id LIKE ?',"%#{day_of_the_week}%")
    @subjects = @subjects.where('period_id LIKE ?',"%#{period}%")
    @subjects = @subjects.where('semester_id LIKE ?',"%#{semester}%")
    return @subjects
  end

  # def self.search(search)
  #   return nil unless search
  #   Subject.where(['name LIKE ? OR instructor LIKE ? OR subject_code LIKE ?',"%#{search}%","%#{search}%","%#{search}%"])
  # end
end
