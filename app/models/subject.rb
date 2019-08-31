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


  def self.search(search)
    return nil unless search
    Subject.where(['name LIKE ?',"%#{search}%"])
  end
end
