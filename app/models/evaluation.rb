# == Schema Information
#
# Table name: evaluations
#
#  id         :integer          not null, primary key
#  criteria   :string
#  kind       :string
#  portion    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Evaluation < ApplicationRecord
end
