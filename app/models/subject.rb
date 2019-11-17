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

  def self.search(name,instructor,subject_code)
    @subjects = Subject.all
    @subjects = @subjects.where('name LIKE ?',"%#{name}%")
    @subjects = @subjects.where('instructor LIKE ?',"%#{instructor}%")
    @subjects = @subjects.where('subject_code LIKE ?',"%#{subject_code}%")
    return @subjects
  end

  # def self.search(search)
  #   return nil unless search
  #   Subject.where(['name LIKE ? OR instructor LIKE ? OR subject_code LIKE ?',"%#{search}%","%#{search}%","%#{search}%"])
  # end
end
