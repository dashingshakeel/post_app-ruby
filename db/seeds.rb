# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:   "Dashing shakeel",
              email:  "dashdash@dash.com",
              password:  "123456",
              password_confirmation:  "123456",
              admin: true,
              activated:  true,
              activated_at: Time.zone.now)
99.times  do  |n|
    name    = Faker::Name.name
    email = "users-#{n+1}@dashing.com"
    password  = "password"
    User.create!(name:    name,
                email:  email,
                password:  password,
                password_confirmation:  password,
                activated:  true,
                assactivated_at: Time.zone.now)
end