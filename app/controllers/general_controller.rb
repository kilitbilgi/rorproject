class GeneralController < ApplicationController
  before_action :set_general, only: [:show, :edit, :update, :destroy]

  # GET /generals
  # GET /generals.json
  def index
    if session[:user_id]
      @current_member = Member.find_by_id(session[:user_id])
      @welcome_name = @current_member.fname + " " +@current_member.lname
    end
  end

  # GET /generals/1
  # GET /generals/1.json
  def show
  end

  # GET /generals/new
  def new
    @general = General.new
  end

  def choose_car

  end

  # GET /generals/1/edit
  def edit
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general
      @general = General.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def general_params
      params[:general]
    end
end
