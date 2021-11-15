require 'faker'

puts "Cleanig DB"
Offer.destroy_all


puts "Creating Offers"

6.times do
  Offer.create(name: Faker::Movies::BackToTheFuture.character,
    price: rand(1000..9000),
    description: Faker::Movies::Lebowski.quote,
    category: Faker::Beer.style,
    rating: rand(1..5),
    max_travellers: rand(1..4))
end

puts "done"
