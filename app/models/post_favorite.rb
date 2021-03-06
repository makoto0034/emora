# == Schema Information
#
# Table name: post_favorites
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_post_favorites_on_post_id  (post_id)
#  index_post_favorites_on_user_id  (user_id)
#

class PostFavorite < ApplicationRecord
  belongs_to :user
  belongs_to :post
end
