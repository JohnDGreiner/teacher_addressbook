# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Teacher.create!(first_name: "Sue", last_name: "Rogers", email: "srogers@example.com", password_digest: "qwe00iop" )
Teacher.create!(first_name: "Joe", last_name: "Johnson", email: "jjohnson@example.com", password_digest: "qwe00iop" )
Teacher.create!(first_name: "Edna", last_name: "Krabappel", email: "ekrabappel@example.com", password_digest: "qwe00iop" )


# 50.times{
# Parent.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, notes: Faker::Hacker.say_something_smart, teacher_id: 1)
# }
#
# 50.times{
# Parent.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, notes: Faker::Hacker.say_something_smart, teacher_id: 2)
# }

50.times{
Parent.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, notes: Faker::Hacker.say_something_smart, teacher_id: 3)
}
