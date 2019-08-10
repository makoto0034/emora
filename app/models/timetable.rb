class Timetable < ApplicationRecord
  belongs_to :user
  has_many :timetable_cells
end
