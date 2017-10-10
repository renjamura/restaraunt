class AllPlacesController < ApplicationController
  
  before_action :authenticate_user!, only:[:show]
  before_action :get_set_cart, only:[:show]
  before_action :set_place, only:[:show, :get_set_cart] 
  
  def index
  	@places = Place.all
  end
  
  def show
  	@place = Place.find(params[:id])
    @cart_item = CartItem.new 
  end

  def get_set_cart
    @place = Place.find(params[:id])
    @cart = Cart.find_or_create_by(status: current_user.name + "_" + @place.name,
                                  user_id: current_user.id, place_id: @place.id)
  end
  
  private

  def set_place
      @place = Place.find(params[:id])
  end

end
