class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to('/restaurants')
  end

  private

  def restaurant_params
    params.required(:restaurant).permit(:name)
  end
end
