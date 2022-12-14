class PagesController < ApplicationController
  # before_action :set_rental, only: [:dashboard]
  # before_action :set_listing, only: [:dashboard]

  def home
  end

  def dashboard
    @listing = Listing.find(params[:listing_id])
    @listing = @rental.listing
    @rentals = Rental.where(user: current_user)
    # @recent_rentals = Rental.distinct.order(created_at: :desc).limit(10)
  end

  private

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def rental_params
    params.require(:rental).permit(:price_rental, :start_date, :end_date, :status)
  end

  # def set_listing
  #   @listing = Listing.find(params[:listing_id])
  # end
end
