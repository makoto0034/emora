class Subject < ApplicationRecord
  has_many :schedules
  has_many :plans
  has_and_belongs_to_many :timetable_cell


  def self.search(search)
    return nil unless search
    Subject.where(['name LIKE ?',"%#{search}%"])
  end
end
