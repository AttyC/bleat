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
    @review = @restaurant.reviews.new(review_params)
    @review.reviewer_id = current_user.id
    @review.save
    redirect_to @restaurant
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.find(params[:id])
    if User.find(@review.reviewer_id) == current_user
      @review.destroy
    else
      flash[:notice] = "You may not delete this review"
    end
    redirect_to restaurant_path(@restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
