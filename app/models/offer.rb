class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  ### enter validations!!!
  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
    pg_search_scope :search_by_category,
    against: [:category],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
