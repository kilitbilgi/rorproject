class SessionController < ApplicationController
  def new
  end

  def create
    member = Member.authenticate(params[:email_login], params[:password_login])
    if member
      session[:user_id] = member.id
      session[:email] = member.email
      session[:full_name] = member.fname + " " + member.lname
      flash[:login_success] = "Logged in!"
      redirect_to root_url
    else
      flash[:login_error] = "Invalid email or password"
      redirect_to root_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end