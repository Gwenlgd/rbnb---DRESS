class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :destroy]

  def index
    if params[:category] == "Men"
    @listings = Listing.where(category:"Men")
    elsif params[:category] == "Women"
    @listings = Listing.where(category:"Women")
    else
    @listings = Listing.all
    end
    # @markers = @listings.geocoded.map do |listing|
    #   {
    #     lat: flat.latitude,
    #     lng: flat.longitude
    #   }
    # end
  end

  def new
    @listing = Listing.new
    @listing.user = current_user
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = current_user.id
    if @listing.save
      redirect_to listing_path(@listing.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @rental = Rental.new
    # @markers = @listings.geocoded.map do |listing|
    #   {
    #     lat: flat.latitude,
    #     lng: flat.longitude
    #   }
    # end
  end

  # def destroy
  #   raise
  #   @listing.destroy
  #   redirect_to listings_path, status: :see_other
  # end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :category, :size, :price, :location)
  end

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
