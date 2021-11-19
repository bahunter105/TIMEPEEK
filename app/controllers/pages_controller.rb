class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home,:about]

  def home
  end

  def about
  end

  def dashboard
    @user = current_user
    @myoffers = current_user.offers
    @bookings = current_user.bookings
  end
end
