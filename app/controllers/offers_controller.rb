class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new]

  def index

    if params[:categories].present?
      @offers = Offer.search_by_category(params[:categories])
    else
      if params[:search].present?
        if params[:search][:query].present?
          @offers = Offer.search_by_name_and_description(params[:search][:query])
        else
          @offers = Offer.all
        end
      else
        @offers = Offer.all
      end
    end

  end

  def show
    @offer = Offer.find(params[:id])
    @booking = Booking.new
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.create(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to @offer, notice: 'Your new offer was successfully created!'
    else
      render :new
    end
  end

  private
  def offer_params
    params.require(:offer).permit(:name, :price, :description, :category, :max_travellers, :date, :photo)
  end

end
