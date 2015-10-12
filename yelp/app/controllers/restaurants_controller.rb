class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    p params
  end

  def new
    @restaurant = Restaurant.new
    p params
  end

  def create
    Restaurant.create(restaurant_params)
    p params
    redirect_to '/restaurants'
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    p params
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end
end
