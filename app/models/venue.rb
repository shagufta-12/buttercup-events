class Venue < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader

	has_many :venue_bookings
	has_many :events
	has_many :comments, dependent: :destroy
	# has_many :likes, dependent: :destroy
	
	belongs_to :locality
	belongs_to :user
	belongs_to :city

	def self.search(search)
		where("name LIKE ?", "%#{search}%")
		#where("description LIKE ?", "%#{search}%")
	end

end
