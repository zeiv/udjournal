class Paper < ActiveRecord::Base
	# using_access_control

	belongs_to :user
	has_one :sabstract, as: :document
	has_many :peer_reviews, as: :document
	has_many :authors, through: :sabstract
	belongs_to :department

	accepts_nested_attributes_for :sabstract
	accepts_nested_attributes_for :authors

	has_attached_file :pdf
	validates_attachment :pdf, content_type: { content_type: "application/pdf" }
end
