class Article < ActiveRecord::Base
	using_access_control

	belongs_to :department
	belongs_to :user
	has_many :photos, as: :document

	def body
		read_attribute(:body).html_safe
	end

	def self.featured
		where(featured: true).first
	end

	def self.last_published
		where(published: true, featured: false).last
	end

	def featured!
		if Article.featured
			old_featured = Article.featured
			old_featured.featured = nil
			old_featured.save
		end
		self.featured = true
		self.save
	end
end
