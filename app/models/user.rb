class User < ActiveRecord::Base
	has_many :authentications, dependent: :delete_all
	has_and_belongs_to_many :roles
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
