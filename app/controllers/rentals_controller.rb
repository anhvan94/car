class RentalsController < ApplicationController
  def new
    @rental = Rental.new
  end

  def show
    @rental = Rental.find_by id: params[:id]
  end

  def create
    @rental = Rental.new rental_params
    if @rental.save
      redirect_to @rental
    end
  end

  private

  def rental_params
    params.require(:rental).permit :car_id, :start_date, :end_date, :distance
  end

  def find_car
    @rental = Rental.find_by id: params[:id]
    @car = @rental.car
  end
end
