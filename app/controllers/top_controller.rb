class TopController < ApplicationController
 require "date"
  def index
  @lists = List.where(user: current_user)
  
@user = current_user
if @user.total_login.blank? 
  @user.total_login = 1
end

if @user.login_date.blank? | @user.continous_login.blank?
@user.login_date = Date.today
@user.continous_login = 1
end

if @user.login_date == Date.today 

elsif @user.login_date + 1 == Date.today
@user.total_login += 1
@user.continous_login += 1
@user.login_date = Date.today
else
  @user.total_login += 1
@user.continous_login = 1
@user.login_date = Date.today
 
end
@user.save
 

  end

 
end
