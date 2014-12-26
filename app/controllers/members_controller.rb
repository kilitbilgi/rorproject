class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

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

  # GET /members/1/edit
  def edit
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)

    #respond_to do |format|
      if @member.save
        #format.html { redirect_to @member, notice: 'Member was successfully created.' }
        redirect_to root_path
        flash[:member_complete] = "Member added successfully"
        #format.json { render :show, status: :created, location: @member }
      else
        redirect_to root_path
        #format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    #end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:email, :password, :fname, :lname , :birthdate, :cellphone)
    end
end
