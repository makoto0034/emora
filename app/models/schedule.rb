class Schedule < ApplicationRecord
  belongs_to :semester
  belongs_to :day_of_the_week
  belongs_to :period
  belongs_to :subject
end
