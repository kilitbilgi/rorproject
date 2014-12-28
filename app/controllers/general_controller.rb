class GeneralController < ApplicationController
  before_action :set_general, only: [:show, :edit, :update, :destroy]

  # GET /generals
  # GET /generals.json
  def index
    if session[:user_id]
      @current_member = Member.find_by_id(session[:user_id])
      @welcome_name = @current_member.fname + " " +@current_member.lname
    end
    clear_rent_info

    #Car brand index
    @index = 0;

    #Latest 3 cars
    @cars = get_latest_cars

    #All brands
    @brands = get_cars_brands

  end

  def get_latest_cars
    latest_cars = Car.last 3
    return latest_cars
  end

  def get_cars_brands
    cars_brands = Car.uniq.pluck(:make)
    puts YAML::dump cars_brands
    return cars_brands
  end
end
