class BookingsController < ApplicationController

  def index
    @offer = Offer.first
    @offers = current_user.offers
    @user = current_user
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.offer = @offer
    if @booking.save
      redirect_to dashboard_path(@offer)
      # Andre's code = redirect_to offers_path(@offer)
    else
      render "offers/show"
    end
  end



  private


  def booking_params
    params.require(:booking).permit(:no_of_travellers, :date, :user, :offer)
  end

end
