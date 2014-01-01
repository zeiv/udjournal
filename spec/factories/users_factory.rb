FactoryGirl.define do
	factory :admin, class: User do
		id 1
		name 'Xavier Bick'
		email 'fbick@udallas.edu'
		roles [ Role.find_by_title('admin') ]
	end

	factory :staff, class: User do
		id 2
		name 'Olivia Lafonde'
		email 'olafonde@udallas.edu'
		roles [ Role.find_by_title('staff') ]
	end

	factory :editor, class: User do
		id 3
		name 'Adam Davis'
		email 'adavis@udallas.edu'
		roles [ Role.find_by_title('editor') ]
	end

	factory :faculty, class: User do
		id 4
		name 'Jacob Moldenhauer'
		email 'jmoldenhauer@udallas.edu'
		roles [ Role.find_by_title('faculty') ]
	end

	factory :user do
		id 5
		name 'Jane Doe'
		email 'jdoe@udallas.edu'
		before(:create) do |user|
			user.roles << Roles.find_by_title('student')
		end
	end

	factory :user_two do
		id 6
		name 'Adam Smith'
		email 'asmith@udallas.edu'
	end
end