# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


puts "Destroying users"
User.destroy_all
puts "Users destroyed\n"
puts "Destroying events"
Event.destroy_all
puts "Events destroyed\n"
puts "Destroying Attendances"
Attendance.destroy_all
puts "Attendances destroyed\n"

10.times do 
	User.create!(email: Faker::Internet.email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::BojackHorseman.quote)
end

puts "un"
10.times do 
	Event.create!(start_date: Faker::Date.forward(203), duration: 50, title: Faker::Company.industry, description: Faker::Hacker.say_something_smart, price: 40, location: Faker::Address.city, admin:User.all.sample)

end
puts "deux"

10.times do 
	Attendance.create!(stripe_customer_id: User.all.sample , user_id: User.all.sample, event_id: User.all.sample)

end


puts "trois"