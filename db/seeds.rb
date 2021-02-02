puts "cleaning up database"
Item.destroy_all

puts "database is clean"

puts 'Creating 3 items...'

items_att = [
  {
    name: 'Chin Chin',
    price: rand(30..50),
    description: Faker::Lorem.sentences(number: 1),
    size: 
  },

  {
    name:         'Tulum',
    price:      '217 Carlisle St, Balaclava VIC 3183',
    description: Faker::Lorem.sentences(number: 1),
    size: 
  },

  {
    name:         'Maha',
    price:      '21 Bond St, Melbourne VIC 3000',
    description: Faker::Lorem.sentences(number: 1),
    size: 
  },

]

Restaurant.create!(restaurants_att)
puts 'Finished!'