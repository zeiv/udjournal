class User < ActiveRecord::Base
	has_many :authentications, dependent: :delete_all
	has_and_belongs_to_many :roles
	has_and_belongs_to_many :departments
	has_many :articles
	has_many :posters
	has_many :papers
	has_many :sabstracts
	has_many :peer_reviews

	before_create :add_default_role

	validates_presence_of :name, :email

	def role_symbols
		(roles || []).map {|r| r.title.to_sym}
	end

	private
	def add_default_role
		self.roles << Role.find_by_title('student')
	end
end
