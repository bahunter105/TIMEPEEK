class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @offers = Offer.all
  end
  def show
    @offer = Offer.find(params[:id])
    @booking = Booking.new
  end
end
