class TopController < ApplicationController
 require "date"
  def index
  @lists = List.where(user: current_user)
  
@user = current_user
if @user.login_date.blank? || @user.total_login.blank?
@user.login_date = Date.today
@user.total_login = 1
elsif @user.login_date + 1 == Date.today
@user.total_login += 1
@user.login_date = Date.today
else
  @user.login_date = Date.today
  @user.total_login = 1
end
@user.save
 

  end

 
end
