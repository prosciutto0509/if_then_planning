class TopController < ApplicationController
  def index
  @lists = List.where(user: current_user).order("lists.created_at ASC")
  @user  = User.where(user: current_user)

  end
end
