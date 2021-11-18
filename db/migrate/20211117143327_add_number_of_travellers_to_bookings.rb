class AddNumberOfTravellersToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :no_of_travellers, :integer
  end
end
