# == Schema Information
#
# Table name: timetables
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_timetables_on_user_id  (user_id)
#

class Timetable < ApplicationRecord
  belongs_to :user
  has_many :timetable_cells
  validates :name,{presence:true}
end
