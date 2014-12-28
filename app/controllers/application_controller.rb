class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def clear_rent_info
    if session[:location]
      session[:location]  = nil
      session[:date_from] = nil
      session[:date_to]   = nil
      session[:car_id]    = nil
    end
  end

end
