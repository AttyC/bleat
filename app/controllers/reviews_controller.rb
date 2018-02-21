class ReviewsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @reviews = Restaurant.find(params[:restaurant_id]).reviews
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create(review_params)
    redirect_to @restaurant
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
