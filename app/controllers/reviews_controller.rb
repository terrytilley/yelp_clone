class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    if current_user.has_reviewed? @restaurant
      raise 'User has already reviewed this restaurant'
    end
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant.reviews.create(review_params)
    redirect_to '/restaurants'
  end

  private

  def review_params
    params.require(:review).permit(:thoughts, :rating)
  end

end
