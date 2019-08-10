# == Schema Information
#
# Table name: subjects
#
#  id           :integer          not null, primary key
#  name         :string
#  subject_code :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Subject < ApplicationRecord
  has_many :schedules
  has_many :plans
  has_and_belongs_to_many :timetable_cell


  def self.search(search)
    return nil unless search
    Subject.where(['name LIKE ?',"%#{search}%"])
  end
end
