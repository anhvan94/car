class CarsController < ApplicationController

  def new
    @car = Car.new
  end

  def create
      @car = Car.new(car_params)
      if @car.save
        redirect_to cars_path
      end
  end
end
  def index
    @cars = Car.all
  end

private

  def find_car
    @car = Car.find_by(id: params[:id])
    unless @car
     redirect_to root_path
     flash[:danger] = "Car not found"
   end
  end

  def car_params
    params.require(:car).permit :price_per_day, :price_per_km
  end
