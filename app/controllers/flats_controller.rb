class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to restaurant_path(@restaurant)
  end

  def edit

  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurant_path(@restaurant)
  end
end

private

def flat_params
  params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
end
