class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    p 'index ', params
  end

  def new
    @restaurant = Restaurant.new
    p 'new ', params
  end

  def create
    Restaurant.create(restaurant_params)
    p 'create ', params
    redirect_to '/restaurants'
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    p 'show ', params
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    p 'edit ', params
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    p 'update ', params
    redirect_to '/restaurants'
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end
end
