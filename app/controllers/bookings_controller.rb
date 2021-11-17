class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end
  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end
  private
  def booking_params
    params.require(:booking).permit(:no_of_travellers, :date, :user, :offer)
  end
end
