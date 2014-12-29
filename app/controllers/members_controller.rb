class MembersController < ApplicationController

  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to root_path
      flash[:member_complete] = "You signed up successfully"
    else
      redirect_to root_path
    end
  end

  def get_member
    member = Member.find_by_id session[:user_id]
    return member
  end

  def profile
    #Get current member information
    @member = get_member
  end

  def profile_complete
    member = get_member
    if member.update(member_params)
      flash[:update_success]=true
      redirect_to '/profile'
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:email, :password , :fname , :lname , :birthdate, :cellphone)
    end
end
