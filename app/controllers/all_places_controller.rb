class AllPlacesController < ApplicationController
  def index
  	@places = Place.all
  end
  def show
  	@place = Place.find(params[:id])
    @cart_item = CartItem.new 
  end
end
