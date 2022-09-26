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
  end

  # def destroy
  #   @recipe.destroy
  #   redirect_to listing_rentals_path, status: :see_other
  # end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

end
