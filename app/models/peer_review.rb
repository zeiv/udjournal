class PeerReview < ActiveRecord::Base
	using_access_control

	belongs_to :user
	belongs_to :document, polymorphic: true
end
