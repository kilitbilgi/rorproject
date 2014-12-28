class CarsController < ApplicationController
  protect_from_forgery :except => :pagination
  def get_limit
    return 3
  end

  def check_date(date_to,date_from)
    require 'date'
    from_to_differ = (date_to.to_date - date_from.to_date).to_i
    from_now_differ = (date_from.to_date - Date.today).to_i
    from_to_differ = (date_to.to_date- Date.today).to_i

    if (from_to_differ>=0 && from_now_differ>=0 && from_to_differ>=0)
      #
    else
      flash[:date_error] = true
      return redirect_to root_path
    end
  end

  def choose_car
    location = params[:location]
    date_from = params[:date_from]
    date_to = params[:date_to]

    check_date(date_from,date_to)

    limit = get_limit
    total_page = Car.where("stock>0").count

    @cars_page = (total_page/limit.to_f).ceil

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
    if session[:location]==nil
      return redirect_to root_path
    end

    render 'cars/choose_car'
  end

  def pagination
    limit = get_limit
    page = params[:page]
    offset = limit * page.to_i

    @cars = Car.where("stock>0").limit(limit).offset(offset)
  end


end
