class MembersController < ApplicationController

  def profile

  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:email, :password, :fname, :lname , :birthdate, :cellphone)
    end
end
