# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

departments = [
	# { title: 'Art', code: 'art' },
	# { title: 'Business', code: 'bus' },
	{ title: 'Biology', code: 'bio' },
	{ title: 'Chemistry', code: 'chem' },
	# { title: 'Computer Science', code: 'cs' },
	# { title: 'Classics', code: 'cla' },
	# { title: 'Drama', code: 'dra' },
	{ title: 'Economics', code: 'econ' },
	# { title: 'Education', code: 'edu' },
	# { title: 'English & Literature', code: 'eng' },
	# { title: 'History', code: 'hist' },
	# { title: 'Human Sciences', code: 'husc' },
	{ title: 'Mathematics', code: 'math' },
	# { title: 'Modern Languages', code: 'modl'},
	# { title: 'Pastoral Ministry', code: 'past' },
	{ title: 'Physics & Engineering', code: 'phys' },
	# { title: 'Politics', code: 'pol' },
	{ title: 'Psyschology', code: 'psy' }
	# { title: 'Philosophy', code: 'phil' },
	# { title: 'Theology', code: 'theo' }
]
departments.each do |department|
	Department.find_or_create_by(department)
end

roles = [
	{ title: 'admin' },
	{ title: 'staff' },
	{ title: 'editor' },
	{ title: 'faculty' },
	{ title: 'student' }
]
roles.each do |role|
	Role.find_or_create_by(role)
end

# Create Xavier as admin if he isn't already a user
User.where(email: 'fbick@udallas.edu' ).first_or_create( name: 'Xavier Bick', roles: Role.where("title in ('admin')") )