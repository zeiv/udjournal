# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

departments = Department.create([
	{ title: 'Art', code: 'art' },
	{ title: 'Business', code: 'bus' },
	{ title: 'Biology', code: 'bio' },
	{ title: 'Chemistry', code: 'chem' },
	{ title: 'Computer Science', code: 'cs' },
	{ title: 'Classics', code: 'cla' },
	{ title: 'Drama', code: 'dra' },
	{ title: 'Economics', code: 'econ' },
	{ title: 'Education', code: 'edu' },
	{ title: 'English & Literature', code: 'eng' },
	{ title: 'History', code: 'hist' },
	{ title: 'Human Sciences', code: 'husc' },
	{ title: 'Mathematics', code: 'math' },
	{ title: 'Modern Languages', code: 'modl'},
	{ title: 'Pastoral Ministry', code: 'past' },
	{ title: 'Physics & Engineering', code: 'phys' },
	{ title: 'Politics', code: 'pol' },
	{ title: 'Psyschology', code: 'psy' },
	{ title: 'Philosophy', code: 'phil' },
	{ title: 'Theology', code: 'theo' }
])

roles = Role.create([
	{ title: 'admin' },
	{ title: 'editor' },
	{ title: 'moderator' },
	{ title: 'student' }
])