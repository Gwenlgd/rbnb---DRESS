class ListingsController < ApplicationController
  before_action :set_listing, only: [:show]

  def index
    if params[:category] == "Men"
    @listings = Listing.where(category:"Men")
    elsif
    @listings = Listing.where(category:"Women")
    else
    @listings = Listing.all
    end
  end

  def show
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

end
