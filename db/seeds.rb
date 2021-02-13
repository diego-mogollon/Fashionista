require "open-uri"
puts "cleaning up database"
Item.destroy_all
User.destroy_all
Category.destroy_all
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
item_1 = Item.create(name: 'Summer Splash', price: rand(30..100), description: "Phasellus  pretium mauris erat, at egestas massa accumsan vel.", size: "XS", user_id: user_1.id )
file = URI.open('https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80')
item_1.photo.attach(io: file, filename: 'photo1.jpg', content_type: 'image/jpg')

Item.create(name: 'Tulum', price: rand(30..100), description: "Phasellus pretium mauris erat, at egestas massa accumsan vel.", size: "S", user_id: user_2.id )
file = URI.open('https://images.unsplash.com/photo-1542295669297-4d352b042bca?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80')
item_2.photo.attach(io: file, filename: 'photo2.jpg', content_type: 'image/jpg')

Item.create(name: 'Isanbul Mavi', price: rand(30..100), description: "Phasellus pretium mauris erat, at egestas massa accumsan vel.", size: "M", user_id: user_3.id )
file = URI.open('https://images.unsplash.com/photo-1597798865390-5d97b78c7cbd?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1182&q=80')
item_3.photo.attach(io: file, filename: 'photo3.jpg', content_type: 'image/jpg')

Item.create(name: 'Maha', price: rand(30..100), description: "Phasellus pretium mauris erat, at egestas massa accumsan vel.", size: "L", user_id: user_4.id )
file = URI.open('https://images.unsplash.com/photo-1600099867395-da7b6be75e14?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80')
item_4.photo.attach(io: file, filename: 'photo4.jpg', content_type: 'image/jpg')

Item.create(name: 'Maha', price: rand(30..100), description: "Phasellus pretium mauris erat, at egestas massa accumsan vel.", size: "L", user_id: user_4.id )
file = URI.open('https://images.unsplash.com/photo-1600099867395-da7b6be75e14?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80')
item_5.photo.attach(io: file, filename: 'photo4.jpg', content_type: 'image/jpg')

# https://unsplash.com/photos/bIIP4igsg1I
Item.create(name: 'El Diego', price: rand(30..100), description: "Phasellus pretium mauris erat, at egestas massa accumsan vel.", size: "XL", user_id: user_5.id )
file = URI.open('https://images.unsplash.com/photo-1542295669297-4d352b042bca?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80')
item_6.photo.attach(io: file, filename: 'photo2.jpg', content_type: 'image/jpg')

# https://unsplash.com/photos/8rGJChx91PA
Item.create(name: 'Lacoste', price: rand(30..100), description: "Phasellus pretium mauris erat, at egestas massa accumsan vel.", size: "XXL", user_id: user_6.id )
file = URI.open('https://images.unsplash.com/photo-1542295669297-4d352b042bca?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80')
item_7.photo.attach(io: file, filename: 'photo2.jpg', content_type: 'image/jpg')


#https://unsplash.com/photos/hVGLqfDMsY8
# https://unsplash.com/photos/_jd8I6yBWM4
# https://unsplash.com/photos/09qgSsAqGik
# https://unsplash.com/photos/us6Yp3hj5oY
# https://unsplash.com/photos/CQ1Lm1h8PDs
# https://unsplash.com/photos/cSt3LmO12pA
# https://unsplash.com/photos/WIlU9KjaMWQ
# https://unsplash.com/photos/d8QjjWueYfk

puts "#{Item.count} Item created..."


[['Date Night', 'category_images/cocktail'], ['Daytime', 'category_images/sun'],['Work','category_images/suitcase'], ['Casual', 'category_images/dress'], ['Everyday', 'category_images/clothes-hanger'], ['Maternity', 'category_images/mother']].each  do |category|
  Category.create(name: category[0], image: category[1])
  end


puts 'Finished!'
