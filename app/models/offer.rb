class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  ### enter validations!!!
  validates :name, presence: true
  validates :photo, presence: true
  validates :description, length: { maximum: 500 }
  validates :max_travellers, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 10 }
  validates :price, presence: true
  validates :date, presence: true
  validates :category, inclusion: {
    in: ['Music', 'Sports', 'Religious', 'Conspiracies', 'Famous battles', 'Famous deaths'],
    message: "%{value} is not a valid size"
  }
  validate :date_must_be_in_the_past

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

  def date_must_be_in_the_past
    if date.present? && date > Date.today
      errors.add(:date, "Offer date must be in the past")
    end
  end

end
