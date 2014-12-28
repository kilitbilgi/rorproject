class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  protect_from_forgery :except => :pagination
  helper :application
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
    location = params[:location]
    date_from = params[:date_from]
    date_to = params[:date_to]

    if location.present? && date_from.present? && date_to.present?
      session[:location] = location
      session[:date_from] = date_from
      session[:date_to] = date_to
    else
      flash[:empty_error] = true
      return redirect_to root_path
    end
  end

  def choose_car_get
    render 'cars/choose_car'
  end

  def pagination
    @page = params[:page]
    @cars = Car.where("stock>0").take(3)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end
end
