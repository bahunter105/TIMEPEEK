
require 'faker'
require "open-uri"

puts "Cleanig DB"
Offer.destroy_all
User.destroy_all

puts "Creating Offers and Users"


user1 = User.new
user1.first_name = 'Sally'
user1.last_name = 'Secret'
user1.email = 'user1@timepeep.com'
user1.password = '123456'
user1.password_confirmation = '123456'
user1.encrypted_password = '123456'
user1.save!
puts user1.email
new_offer = Offer.create(
  name: 'Birth of Jesus',
  price: rand(1000..9000),
  date: Date.parse('0001-01-01'),
  description: "Birth of Jesus",
  category: 'Religious',
  rating: rand(1..5),
  max_travellers: rand(1..4))
file = File.open('app/assets/images/birthjesus.jpg')
new_offer.photo.attach(io: file, filename: 'birthjesus.jpg', content_type: 'image/jpg')
new_offer.user = user1
new_offer.save
puts new_offer.name

new_offer = Offer.create(
  name: 'Ravens Win Superbowl',
  price: rand(1000..9000),
  date: Date.parse('2015-01-10'),
  description: "Ravens Win Superbowl",
  category: 'Sports',
  rating: rand(1..5),
  max_travellers: rand(1..4))
file = File.open('app/assets/images/ravens.jpg')
new_offer.photo.attach(io: file, filename: 'ravens.jpg', content_type: 'image/jpg')
new_offer.user = user1
new_offer.save
puts new_offer.name

new_offer = Offer.create(
  name: 'Death of Ceasar',
  price: rand(1000..9000),
  date: Date.parse('44-03-15'),
  description: "Death of Ceasar",
  category: 'Famous Deaths',
  rating: rand(1..5),
  max_travellers: rand(1..4))
file = File.open('app/assets/images/ceasar.jpg')
new_offer.photo.attach(io: file, filename: 'ceasar.jpg', content_type: 'image/jpg')
new_offer.user = user1
new_offer.save
puts new_offer.name


user2 = User.new
user2.first_name = 'Bob'
user2.last_name = 'Smith'
user2.email = 'user2@timepeep.com'
user2.password = '123456'
user2.password_confirmation = '123456'
user2.encrypted_password = '123456'
user2.save!
puts user2.email

new_offer = Offer.create(
  name: 'Battle of Flanders',
  price: rand(1000..9000),
  date: Date.parse('1567-01-01'),
  description: "Battle of Flanders",
  category: 'Famous Battles',
  rating: rand(1..5),
  max_travellers: rand(1..4))
file = File.open('app/assets/images/flanders.jpg')
new_offer.photo.attach(io: file, filename: 'flanders.jpg', content_type: 'image/jpg')
new_offer.user = user2
new_offer.save
puts new_offer.name

new_offer = Offer.create(
  name: 'Jimi Hendrix at Woodstock',
  price: rand(1000..9000),
  date: Date.parse('1969-08-18'),
  description: "Jimi Hendrix at Woodstock",
  category: 'Music',
  rating: rand(1..5),
  max_travellers: rand(1..4))
file = File.open('app/assets/images/hendrix.jpg')
new_offer.photo.attach(io: file, filename: 'hendrix.jpg', content_type: 'image/jpg')
new_offer.user = user2
new_offer.save
puts new_offer.name

new_offer = Offer.create(
  name: 'Roswell Incident',
  price: rand(1000..9000),
  date: Date.parse('1947-01-01'),
  description: "Roswell Incident",
  category: 'Conspiracies',
  rating: rand(1..5),
  max_travellers: rand(1..4))
file = File.open('app/assets/images/roswell.jpg')
new_offer.photo.attach(io: file, filename: 'roswell.jpg', content_type: 'image/jpg')
new_offer.user = user2
new_offer.save
puts new_offer.name

puts "done"
