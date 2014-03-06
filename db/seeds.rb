# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.create(status: "out-of-date", severity: "low", my_id: 1)
Person.create(status: "current", severity: "high", my_id: 2)
Person.create(status: nil, severity: "high", my_id: 3)
