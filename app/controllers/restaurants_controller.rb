class RestaurantsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.owner_id = current_user.id
    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

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
    if User.find(@restaurant.owner_id) == current_user
      @restaurant.destroy
    else
      flash[:notice] = "You may not delete this restaurant"
    end
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description)
  end
end
