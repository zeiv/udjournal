class Post < ActiveRecord::Base
	using_access_control

	belongs_to :department
	belongs_to :user

	def self.featured
		where(featured: true).first
	end

	def featured!
		if Post.featured
			old_featured = Post.featured
			old_featured.featured = nil
			old_featured.save
		end
		self.featured = true
		self.save
	end
end
