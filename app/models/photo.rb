class Photo < ActiveRecord::Base
	using_access_control

	belongs_to :document, polymorphic: true

	has_attached_file :image, styles: { half: "460x", third: "300x", thumb: "60x", small: "220x" }
	validates_attachment :image, content_type: { content_type: "image/jpg", content_type: "image/png" }
end
