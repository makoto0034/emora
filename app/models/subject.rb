class Subject < ApplicationRecord
  has_many :schedules
  has_many :plans
end
