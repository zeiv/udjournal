class Department < ActiveRecord::Base
	has_many :articles
	has_many :papers
	has_many :posters
	has_many :sabstracts
	has_and_belongs_to_many :users
end
