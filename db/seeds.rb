require 'faker'
require "open-uri"

puts "Cleanig DB"
Offer.destroy_all
User.destroy_all

puts "Creating Offers and Users"

3.times do
  user1 = User.new
  user1.email = 'user1@timepeep.com'
  user1.encrypted_password = 'timepeep'
  user1.save!
  puts user1.name
  6.times do
    new_offer = Offer.create(
      name: Faker::Movies::BackToTheFuture.character,
      price: rand(1000..9000),
      description: Faker::Movies::Lebowski.quote,
      category: Faker::Beer.style,
      rating: rand(1..5),
      max_travellers: rand(1..4))
    file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
    new_offer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
    new_offer.user = user1
    new_offer.save
    puts new_offer.name
  end
end

puts "done"
