class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :bookings
  #user booked offers
  has_many :offers, through: :bookings
  # user created offers
  has_many :owned_offers, foreign_key: "user_id", class_name: "Offer"
  validates :first_name, presence: true
  validates :last_name, presence: true

end
