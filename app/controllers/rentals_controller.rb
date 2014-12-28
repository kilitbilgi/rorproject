class RentalsController < ApplicationController

  def review_book_skeleton(param)
    require 'date'
    car_id = AESCrypt.decrypt(param, "r3a3")
    @car = Car.find_by_id car_id

    price = @car.price
    date_from = session[:date_from].to_date
    date_to   = session[:date_to].to_date

    date_differ = ( date_to - date_from ).to_i

    @total_price = date_differ * price

    @user_info = get_user_info

    @age = calculate_age(get_user_info.birthdate)
  end

  def review_book
    review_book_skeleton(params[:car_id])
  end

  def review_book_get
    if session[:car_id]==nil
      return redirect_to root_path
    end
    review_book_skeleton(session[:car_id])
    flash[:card_error]=true
    render 'rentals/review_book'
  end

  def get_user_info
    return Member.find_by_id session[:user_id]
  end

  def calculate_age(birthday)
    return (Date.today - birthday).to_i / 365
  end

end
