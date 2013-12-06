class Author < ActiveRecord::Base
	using_access_control

	belongs_to :sabstract
end
