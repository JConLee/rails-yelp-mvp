class RestaurantsController < ApplicationController
   before_action :set_restaurant, only: [:show, :edit, :update, :destroy,]


  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      raise
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end


  def restaurant_params
      params.require(:restaurant).permit(:name, :address, :description, :stars)
  end
end
