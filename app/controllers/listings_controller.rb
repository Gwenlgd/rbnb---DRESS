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
  end

  def show
    @rental = Rental.new

  end

  def destroy
    @listing.destroy
    redirect_to listings_path, status: :see_other
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
