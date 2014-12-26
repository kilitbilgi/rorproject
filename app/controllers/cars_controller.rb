class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  # GET /cars
  # GET /cars.json
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  def choose_car
    @location = params[:location]
    @pickupdate = params[:pickupdate]
    @dropoffdate = params[:dropoffdate]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end
end
