class ReservationController < ApplicationController

  def complete_reservation
    # Amount in cents
    amount = AESCrypt.decrypt(params[:price], "r3a3")
    card_number = params[:card_number].gsub('-','')
    exp_month   = params[:exp_month]
    exp_year    = params[:exp_year]

    charge = create_charge(amount,card_number,exp_month,exp_year)

    if charge.present?
      #
    else
      redirect_to review_book_path
    end

    car_id = AESCrypt.decrypt(params[:car_id], "r3a3")
    rental = create_rental car_id

    if rental.save
      redirect_to root_path
    else
      flash[:error] = e.message
      redirect_to review_book_path
    end

  end

  #Rental object creation based on car id
  def create_rental(car_id)
    rental = Rental.new
    rental.pickupdate = session[:date_from]
    rental.dropoffdate = session[:date_to]
    rental.location = session[:location]
    rental.members_id = session[:user_id]
    rental.cars_id = AESCrypt.decrypt(params[:car_id], "r3a3")
    return rental
  end

  #Creates charges for current user
  def create_charge(amount,card_number,exp_month,exp_year)
    customer = Stripe::Customer.create(
        :email => session[:email],
        :card  => {"number"=>card_number,"exp_month"=>exp_month,"exp_year"=>exp_year}
    )

    #Valid Price for Stripe
    amount = amount.to_i * 100;

    charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => amount,
        :description => 'Rent A Car Ödemesi',
        :currency    => 'try'
    )
    return charge
  end

end
