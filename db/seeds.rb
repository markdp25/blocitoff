include Faker


#Create users
5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
users = User.all

#Create items
50.times do
  Item.create!(
    name: Faker::Seinfeld.quote,
    user: users.sample
  )
end

  # Create an admin user
  admin = User.create!(
  email:          'admin@example.com',
  password:       'password',
  confirmed_at:   Time.now
  )


puts "Seed finished"
puts "#{User.count} users created."
puts "#{Item.count} items created."
