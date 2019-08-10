# == Schema Information
#
# Table name: textbooks
#
#  id         :integer          not null, primary key
#  author     :string
#  content    :text
#  isbn       :string
#  others     :text
#  publisher  :string
#  title      :string
#  year       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Textbook < ApplicationRecord
end
