class Micropost < ApplicationRecord
	validates :user_id, presence: true
	validates :content, presence: true, length: { maximum: 140 }
	belongs_to :user

	def self.from_users_followed_by(user)
		followed_user_ids = user.followed_user_ids
		where("user_id IN (:followed_user_ids) OR user_id = :user_id", 
			followed_user_ids: followed_user_ids, user_id: user).order(created_at: :desc)
	end
end
