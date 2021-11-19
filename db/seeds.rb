
require 'faker'
require "open-uri"

puts "Cleanig DB"
Booking.destroy_all
Offer.destroy_all
User.destroy_all

puts "Creating Offers and Users"


user1 = User.new
user1.first_name = 'Sally'
user1.last_name = 'Secret'
user1.email = 'user1@timepeek.com'
user1.password = '123456'
user1.password_confirmation = '123456'
user1.encrypted_password = '123456'
user1.save
file = File.open('app/assets/images/sally.jpg')
user1.photo.attach(io: file, filename: 'sally.jpg', content_type: 'image/jpg')

puts user1.email
new_offer = Offer.create(
  name: 'Birth of Jesus',
  price: rand(1000..9000),
  date: Date.parse('0001-01-01'),
  description: "When you think of major religious evens, the birth of the Son Of God has to be up there. Imagine being there and being able to experience be able to separate the reality from the myth. Embark on a time adventure of biblical proportions and immerse yourselves in the day that the saviour was born. This Time adventure is only one of the many biblical related time escapes that you can go on. Don’t miss the opportunity of witnessing the origin story of one of the most influential figures not only in religion but in time.",
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
  description: "If you are a dedicated member of the Raven Flock, or you bleed purple then this time adventure is made just for you. Go back to see the last time the Baltimore Ravens took the biggest stage on earth and were crowned champion at Super Bowl XLVII. The American Football Conference (AFC) champion Baltimore Ravens and the National Football Conference (NFC) champion San Francisco 49ers to decide the National Football League (NFL) champion for the 2012 season. The Ravens defeated the 49ers by the score of 34–31, handing the 49ers their first Super Bowl loss in franchise history. The game was played on Sunday, February 3, 2013, at Mercedes-Benz Superdome in New Orleans, Louisiana.
For the first time in Super Bowl history, the game featured two brothers coaching against each other — Jim and John Harbaugh, head coaches of the San Francisco 49ers and Baltimore Ravens, respectively — earning it the nickname Har-bowl. Super Bowl XLVII was the first to feature two teams that had undefeated records in previous Super Bowl games (Baltimore, 1–0; San Francisco, 5–0). The 49ers, who posted a regular-season record of 11–4–1, entered the game seeking their sixth Super Bowl win in team history (and first since Super Bowl XXIX at the end of the 1994 season), . Ray Lewis, the Most Valuable Player (MVP) from that game, as well as the last remaining member of the inaugural Ravens roster from 1996, also played in this game, his last before his retirement from professional football",
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
  description: "Fewer assassinations have had as much impact on the history of the worl than that of Julius Ceasar. He was assassinated by a group of senators on the Ides of March (15 March) of 44 BC during a meeting of the Senate at the Curia of Pompey of the Theatre of Pompey in Rome. The senators stabbed Caesar 23 times. The senators claimed to be acting over fears that Caesar’s unprecedented concentration of power during his dictatorship was undermining the Roman Republic, and presented the deed as an act of tyrannicide. At least 60 senators were party to the conspiracy, led by Marcus Junius Brutus and Gaius Cassius Longinus. Despite the death of Caesar, the conspirators were unable to restore the institutions of the Republic. The ramifications of the assassination led to the Liberators’ civil war and ultimately to the Principate period of the Roman Empire. Book your time adventure now and be a witness to one of history’s  most documented assassinations, to one of the most notorious historical figures to have ever lived!",
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
user2.email = 'user2@timepeek.com'
user2.password = '123456'
user2.password_confirmation = '123456'
user2.encrypted_password = '123456'
file = File.open('app/assets/images/bob.jpg')
user2.photo.attach(io: file, filename: 'bob.jpg', content_type: 'image/jpg')
user2.save
puts user2.email

new_offer = Offer.create(
  name: 'The Eighty Years War',
  price: rand(1000..9000),
  date: Date.parse('1567-01-01'),
  description: "In October 1555, Emperor Charles V of the Holy Roman Empire began the gradual abdication of his several crowns. His son Philip II took over as sovereign of the Habsburg Netherlands,   which at the time was a personal union of seventeen provinces with little in common beyond their sovereign and a constitutional framework. This framework, assembled during the preceding reigns of Burgundian and Habsburg rulers, divided power between city governments, local nobility, provincial States, royal stadtholders, the States General of the Netherlands, and the central government (possibly represented by a Regent) assisted by three councils: the Council of State, the Privy Council and the Council of Finances. The balance of power was heavily weighted toward the local and regional governments. Jump into some of the major battles during this epic war setting in which the famous Spanish Tercios took on the Dutch forces time and time again. Smell the gunpowder and watch some of the most elite soldiers fight it out, to what would eventually result in the Peace of Munster agreement which would separate the battlefields between the now known territory of the Netherlands and Belgium.",
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
  description: "Jimi Hendrix’s was the most anticipated Woodstock performance, but by the time he and his newly formed band, Gypsy Sun & Rainbows, started their two-hour set at 9:00 a.m. Monday morning, the half-million-person audience was down to roughly 40,000. Those who stayed for the festival finale witnessed one of the most memorable and legendary performances of the entire decade. By August of 1969, Hendrix’s career was in a major state of flux. Holed up at his rented house in Shokan, he assembled a new group to play at Woodstock, which he named Gypsy Sun and Rainbows. This featured Jimi Hendrix Experience drummer Mitch Mitchell alongside two local Woodstock percussionists, Juma Sultan and Jerry Velez. The lineup was rounded off with two of Hendrix’s buddies from his days in the U.S. military, guitarist Larry Lee and rock-solid bassist Billy Cox. They convened for a brief but intense series of rehearsals in Woodstock before heading out to White Lake for Hendrix’s headlining gig. If this isn’t enough to book a time adventure to the Hendrix Experience I can’t imagine what would. ",
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
  description: "A must see time adventure exclusive, The Roswell incident is the 1947 recovery of United States Army Air Forces balloon debris from a ranch near Corona, New Mexico by Roswell Army Air Field officers, and the subsequent conspiracy theories claiming that the debris involved a flying saucer, and that the truth had been covered up by the United States government. On July 8, 1947, Roswell Army Air Field issued a press release stating that they had recovered a “flying disc”. The Army quickly retracted the statement and said instead that the crashed object was a conventional weather balloon.
The Roswell incident did not surface again until the late 1970s, when retired lieutenant colonel Jesse Marcel, in an interview with ufologist Stanton Friedman, said he believed the debris he retrieved was extraterrestrial. Ufologists began promoting a variety of increasingly elaborate conspiracy theories, claiming that one or more alien spacecraft had crash-landed and that the extraterrestrial occupants had been recovered by the military, which then engaged in a cover-up.",
  category: 'Conspiracies',
  rating: rand(1..5),
  max_travellers: rand(1..4))
file = File.open('app/assets/images/roswell.jpg')
new_offer.photo.attach(io: file, filename: 'roswell.jpg', content_type: 'image/jpg')
new_offer.user = user2
new_offer.save
puts new_offer.name

puts "done"
