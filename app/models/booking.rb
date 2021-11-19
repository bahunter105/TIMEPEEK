class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :user
  validate :user_is_owner?
  validates :confirmation_status, inclusion: {
    in: ['Awaiting Confirmation', 'Confirmed!', 'Cancelled'],
    message: "%{value} is not a valid confirmation"
  }

  def user_is_owner?
    if self.user == self.offer.user
      errors.add(:user_is_owner, "can't book for the travel you have created!")
    end
  end

end
