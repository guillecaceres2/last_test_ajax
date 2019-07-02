# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'putin@blyatman.urss', password: 'stalin2.0', password_confirmation: 'stalin2.0') if Rails.env.development?

Company.destroy_all
User.destroy_all
Claim.destroy_all

20.times do
Company.create(
name: Faker::Company.name
)
end

30.times do
User.create(
email: Faker::Internet.email,
password: 123456
)
end

users = User.all
companies = Company.all

300.times do
Claim.create(
content: Faker::Lorem.sentence,
user: users.sample,
company: companies.sample
)
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?