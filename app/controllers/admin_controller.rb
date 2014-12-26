class AdminController < ApplicationController

  #Admin Controller

  def index
    #If admin logged in , redirect to admin panel
    if session[:admin_id]
      redirect_to admin_main_path
    end
  end

  def cars
    @all_cars = Car.all.order 'id'
    render :layout => 'admin_layout'
  end

  # GET /admin/AddCar
  def add_car
    render :layout => 'admin_layout'
    @car = Car.new
  end

  # GET /admin/addCarComplete
  def add_car_complete
    #render :layout => 'admin_layout'
    @car = Car.new(car_params)
    if @car.save
      redirect_to '/admin/cars'
    else
      redirect_to '/admin/cars'
    end
  end

  def change_car
    render :layout => 'admin_layout'
  end

  def change_complete(param)
    @car = Car.find_by_id(params[:car_id])
    if @car.update(param)
      redirect_to admin_cars_path
    else
      redirect_to admin_cars_path
    end
  end

  def change_car_complete
    change_complete car_params
  end

  def change_stock
    render :layout => 'admin_layout'
  end

  def change_stock_complete
    change_complete stock_params
  end

  def delete_car
    render :layout => 'admin_layout'
  end

  def delete_car_complete
    @car = Car.find_by_id(params[:car_id])
    if @car.delete
      redirect_to admin_cars_path
    else
      redirect_to admin_cars_path
    end
  end

  def members
    @all_members = Member.all.order 'id'
    render :layout => 'admin_layout'
  end

  def change_member
    render :layout => 'admin_layout'
  end

  def change_member_complete
    member = Member.find_by_id(params[:user_id])
    if member.update(member_params)
      redirect_to admin_members_path
    else
      redirect_to admin_members_path
    end
  end

  def delete_member
    render :layout => 'admin_layout'
  end

  def delete_member_complete
    member = Member.find_by_id(params[:user_id])
    if member.delete
      redirect_to admin_members_path
    else
      redirect_to admin_members_path
    end
  end

  def rentals
    @all_rentals = Rental.all.order 'id'
    render :layout => 'admin_layout'
  end

  def options
    @title = Option.find_by_opt_key 'site_title'
    render :layout => 'admin_layout'
  end

  def options_complete
    site_title = params[:site_title]
    if site_title.presence
      title_obj = Option.find_by_opt_key 'site_title'
      title_obj.opt_val = site_title
      if title_obj.save
        redirect_to admin_options_path
      else
        redirect_to admin_options_path
      end
    end
  end

  def main
    if session[:admin_id]
      admin = Admin.find_by_id(session[:admin_id])
      @full_name = admin.fname + " " +admin.lname
      render :layout => 'admin_layout'
    else
      redirect_to admin_path
    end
  end

  def login
    admin = Admin.authenticate(params[:admin_email], params[:admin_password])
    if admin
      session[:admin_id] = admin.id
      session[:full_name] = admin.fname + " " + admin.lname
      flash[:admin_success] = "Logged in!"
      redirect_to admin_main_path
    else
      flash[:login_error] = "Invalid email or password"
      redirect_to admin_path
    end
  end

  # GET /admins/new
  def new
    @admin = Admin.new
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    session[:admin_id] = nil
    redirect_to admin_path
  end

  private
    def car_params
      params.require(:car).permit(:title, :make, :model , :year_info, :color , :fueltype, :hp , :image , :price, :stock)
    end
    def stock_params
      params.require(:car).permit(:stock)
    end
    def member_params
      params.require(:member).permit(:fname,:lname,:birthdate,:cellphone)
    end
end

