class Poster < ActiveRecord::Base
	# using_access_control

	belongs_to :user
	belongs_to :department
	has_one :sabstract, as: :document
	has_many :peer_reviews, as: :document
	has_many :authors, through: :sabstract

	accepts_nested_attributes_for :sabstract
	accepts_nested_attributes_for :authors

	has_attached_file :pdf
	validates_attachment :pdf, content_type: { content_type: ["application/pdf", "application/x-pdf"] }
end
