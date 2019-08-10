# == Schema Information
#
# Table name: semesters
#
#  id         :integer          not null, primary key
#  code       :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Semester < ApplicationRecord
  has_many :schedules
end
