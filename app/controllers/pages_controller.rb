class PagesController < ApplicationController
  def home

  end

  def dashboard
    @rentals = current_user.rentals
  end
end
