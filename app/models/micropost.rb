class Micropost < ApplicationRecord
	validates :user_id, presence: true
	validates :content, presence: true, length: { maximum: 140 }
	belongs_to :user
end
