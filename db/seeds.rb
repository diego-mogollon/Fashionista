puts "cleaning up database"
Item.destroy_all
User.destroy_all

puts "database is clean"

puts 'Creating 6 user...'
user_1 = User.create(email: "user@user.com.tr", password: 111111)
user_2 = User.create(email: "anil@user.com.tr", password: 222222)
user_3 = User.create(email: "aparna@user.com.tr", password: 333333)
user_4 = User.create(email: "diego@user.com.tr", password: 444444)
user_5 = User.create(email: "cheena@user.com.tr", password: 555555)
user_6 = User.create(email: "maradona@user.com.tr", password: 666666)
puts "#{User.count} User created..."

puts 'Creating 6 items...'
Item.create(name: 'Chin Chin', price: rand(30..100), description: "Phasellus pretium mauris erat, at egestas massa accumsan vel.", size: "XS", user_id: user_1.id )
Item.create(name: 'Tulum', price: rand(30..100), description: "Phasellus pretium mauris erat, at egestas massa accumsan vel.", size: "S", user_id: user_2.id )
Item.create(name: 'Isanbul Mavi', price: rand(30..100), description: "Phasellus pretium mauris erat, at egestas massa accumsan vel.", size: "M", user_id: user_3.id )
Item.create(name: 'Maha', price: rand(30..100), description: "Phasellus pretium mauris erat, at egestas massa accumsan vel.", size: "L", user_id: user_4.id )
Item.create(name: 'El Diego', price: rand(30..100), description: "Phasellus pretium mauris erat, at egestas massa accumsan vel.", size: "XL", user_id: user_5.id )
Item.create(name: 'Lacoste', price: rand(30..100), description: "Phasellus pretium mauris erat, at egestas massa accumsan vel.", size: "XXL", user_id: user_6.id )

puts "#{Item.count} Item created..."


['Casual', 'Daytime', 'Date Night', 'Work', 'Maternity', 'Everything'].each  do |category|
  Category.create(name: category)
  end


puts 'Finished!'
