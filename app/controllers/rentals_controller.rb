class RentalsController < ApplicationController
  before_action :set_rental, only: [:show]
  before_action :set_listing, only: [:new, :create]

  def index
    @rentals = Rental.all
  end

  def show
    @listing = @rental.listing
    @rental.user = current_user

  end

  def new
    @rental = Rental.new
    @listing = Listing.find(params[:listing_id])
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.listing = Listing.find(params[:listing_id])
    @rental.user = current_user
    @rental.price_rental = @listing.price
    @rental.status = "Pending"
    if @rental.save
      redirect_to @rental
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def rental_params
    params.require(:rental).permit(:price_rental, :start_date, :end_date, :status)
  end

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end
end
