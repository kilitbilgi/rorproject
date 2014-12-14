class AdminController < ApplicationController

  # GET /admins
  # GET /admins.json
  def index

  end

  # GET /admins/1
  # GET /admins/1.json
  def show
  end

  def cars

  end

  def main
    if session[:admin_id]
      admin = Admin.find_by_id(session[:admin_id])
      @admin_name = admin.fname + " " +admin.lname
    else
      redirect_to root_path
    end
  end

  def login
    admin = Admin.authenticate(params[:admin_email], params[:admin_password])
    if admin
      session[:admin_id] = admin.id
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

  # GET /admin/AddCar
  def addCar
    @car = Car.new
  end

  def editCar
    @car = Car.new
  end

  def addCarComplete
    @car = Car.new
  end

  # GET /admins/1/edit
  def edit
  end

  # POST /admins
  # POST /admins.json
  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    session[:admin_id] = nil
    redirect_to admin_path
  end
end
