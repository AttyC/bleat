class RestaurantsController < ApplicationController
   # GET '/restaurants'
  def index
    @restaurants = Restaurant.all
  end

  # GET '/restaurants/id'
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # GET '/restaurants/new'
  def new
  end

  # POST '/restaurants'
  def create 
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to @restaurant
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description)
  end
end
