class Poster < ActiveRecord::Base
	using_access_control

	belongs_to :user
	belongs_to :department
	has_one :sabstract, as: :document
	has_many :peer_reviews, as: :document
	has_many :authors, through: :sabstract

	has_attached_file :pdf, styles: {full: "940x", half: "460x", third: "300x"}
	validates_attachment :pdf, content_type: { content_type: "application/pdf" }
end
