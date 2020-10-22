class UserController < ApplicationController

  def edit
    @user= User.find_by(id: current_user.id)
  end

  def update
    @user= User.find_by(id: current_user.id)
    if @user.update_attributes(user_params)
      redirect_to :root
    else
      render action: :edit
    end
  end


  private
  def user_params
    params.require(:user).permit(:name,:login_date)
  end

end
