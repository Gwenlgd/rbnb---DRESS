class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :destroy]
  before_action :set_listing, only: [:new, :create]

  def index
    @rentals = Rental.all
  end

  def show
    @listing = @rental.listing
    @rental.user = current_user
    if params[:insurance] == "Yes, please"
      @insurance = "Ca marche"
      @insurance.save
      else
      @insurance = "Gratuit"
    end
  end

  def new
    @rental = Rental.new
    @listing = Listing.find(params[:listing_id])
    @rental.user = current_user
    if params[:insurance] == "Yes, please"
      @insurance = "Ca marche"
      @insurance.save
      else
      @insurance = "Gratuit"
    end
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

  def destroy
    @rental.destroy
    redirect_to @rental, status: :see_other
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
