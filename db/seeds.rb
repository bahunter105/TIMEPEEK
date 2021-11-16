require 'faker'
require "open-uri"

puts "Cleanig DB"
Offer.destroy_all
User.destroy_all

puts "Creating Offers and Users"

6.times do
  Offer.create(
    file = URI.open('https://media.playmobil.com/i/playmobil/70317_product_detail/Back%20to%20the%20Future%20Delorean?locale=es-ES,es,*&$pdp_product_zoom_xl$&strip=true&qlt=80&fmt.jpeg.chroma=1,1,1&unsharp=0,1,1,7&fmt.jpeg.interlaced=true'),
    offer = Offer.new(title: 'NES', body: "A great console"),
    offer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png'),
    name: Faker::Movies::BackToTheFuture.character,
    price: rand(1000..9000),
    description: Faker::Movies::Lebowski.quote,
    category: Faker::Beer.style,
    rating: rand(1..5),
    max_travellers: rand(1..4))
end

user1 = User.new
user1.email = 'user1@timepeep.com'
user1.encrypted_password = 'timepeep'
user1.save!

user2 = User.new
user2.email = 'user2@timepeep.com'
user2.encrypted_password = 'timepeep'
user2.save!

user3 = User.new
user3.email = 'user3@timepeep.com'
user3.encrypted_password = 'timepeep'
user3.save!

puts "done"
