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
    @restaurant = Restaurant.new
  end

  # GET '/restaurants/:id/edit'
  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  # POST '/restaurants'
  def create 
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  # PATCH '/restaurants/:id/update'
  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description)
  end
end
