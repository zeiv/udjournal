class Sabstract < ActiveRecord::Base
	using_access_control

	belongs_to :user
	belongs_to :department
	belongs_to :document, polymorphic: true
	has_many :authors
	has_many :peer_reviews, as: :document
end
