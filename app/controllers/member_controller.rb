class MemberController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  # GET /members
  # GET /members.json
  def index
    @members = Member.all
  end

  # GET /members/1
  # GET /members/1.json
  def show
  end

  # GET /members/new
  def new
    @member = Member.new
  end

  def login

  end

  def register
    Member.create(fname:params[':register_fname'],lname:params[':register_lname'],email:params[':register_email'])
    redirect_to '/'
    #Check for register or login
    if params[":register"]
      @member = Member.create(fname:params[':register_fname'],lname:params[':register_lname'],email:params[':register_email'])
      #@member.email = params[:email]
      if @member
        flash["success"] = "Thanks for registering!"
        redirect_to '/'
      else
        flash["error"] = "Registration error"
        redirect_to '/'
      end
    else
      redirect_to '/'
    end
  end

  # GET /members/1/edit
  def edit
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to @member, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params[:member]
    end
end
