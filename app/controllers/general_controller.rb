class GeneralController < ApplicationController
  before_action :set_general, only: [:show, :edit, :update, :destroy]

  # GET /generals
  # GET /generals.json
  def index
    clear_rent_info

    #Car brand index
    @index = 0;

    #Latest 3 cars
    @cars = get_latest_cars

    #Latest 3 rentals
    @rentals = get_latest_rentals

    #All brands
    @brands = get_cars_brands

  end

  def get_latest_cars
    latest_cars = Car.last 3
    return latest_cars
  end

  def get_cars_brands
    cars_brands = Car.uniq.pluck(:make)
    return cars_brands
  end

  def get_latest_rentals
    latest_rentals = Rental.last 3
    return latest_rentals
  end
end
