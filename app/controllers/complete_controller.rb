class CompleteController < ApplicationController
  before_action :set_card, only: [:create, :destroy]
  before_action :set_list, only: [:create, :destroy]
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
completes = Complete.where(user_id: @user.id)
completes.delete_all
else
  @user.total_login += 1
@user.continous_login = 1
@user.login_date = Date.today
completes = Complete.where(user_id: @user.id)
completes.delete_all
end
@user.save
 

end

def create
@complete = Complete.create(user_id: current_user.id, card_id: @card.id)

end

  def destroy
    @complete = Complete.find_by(user_id: current_user.id,card_id: @card.id)
    @complete.destroy
  end
  private

  def set_card
    @card = Card.find(params[:card_id])
  end

  def set_list
    @list = List.find_by(id: @card.list_id)
  end
 
end
