class ApplicationController < ActionController::Base
  def index
    @restaurants = Restaurant.all
  end

  def show
    @task = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to Restaurants_path(@restaurant)
  end

  def edit
    @restaurant = restaurant.find(params[:id])
  end

  def update
    @restaurant = restaurant.find(params[:id])
    @restaurant.update(restaurant_params)

    redirect_to restaurants_path(@restaurant)
  end

  def destroy
    @restaurant = restaurant.find(params[:id])
    @restaurant.destroy

    redirect_to restaurants_path
  end

  def done
    completed == true
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:title, :details, :completed)
  end
end
