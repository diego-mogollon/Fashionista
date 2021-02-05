puts "cleaning up database"
Item.destroy_all
User.destroy_all
puts "database is clean"
puts 'Creating 1 user...'
user_1 = User.create(email: "user@user.com.tr", password: 111111)
puts "#{User.count} User created..."
puts 'Creating 1 items...'

Item.create(name: 'Chin Chin', price: rand(30..50), description: "Phasellus pretium mauris erat, at egestas massa accumsan vel.", size: "XS", user_id: user_1.id )

puts "#{Item.count} Item created..."
# items_att = [
#   {
#     name: 'Chin Chin',
#     price: rand(30..50),
#     description: Faker::Lorem.sentences(number: 1),
#     size: "XS"
#   },

#   {
#     name: 'Tulum',
#     price: rand(30..50),
#     description: Faker::Lorem.sentences(number: 1),
#     size: "XXL" 
#   },

#   {
#     name: 'Maha',
#     price: rand(30..50),
#     description: Faker::Lorem.sentences(number: 1),
#     size: "L"
#   },
# ]

# Item.create!(items_att)
puts 'Finished!'
