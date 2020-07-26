class ListController < ApplicationController
before_action :set_list, only: [:edit, :update, :destroy]

  def new
    @list = List.new
  end

  def create
     @list = List.new(list_params)
     
     @list[:time_zone]=@list[:time_zone].delete("0")
     @list[:time_zone]=@list[:time_zone].delete("""\"")
     @list[:time_zone]=@list[:time_zone].delete(",")
     
    if @list.save
      redirect_to :root
    else
      render action: :new
    end
  end

  def edit

  end

  def update
    
    
  
    if @list.update(list_params)
      @list[:time_zone]=@list[:time_zone].delete("0")
      @list[:time_zone]=@list[:time_zone].delete("""\"")
      @list[:time_zone]=@list[:time_zone].delete(",")
      @list.save
      redirect_to :root

    else
      render action: :edit
    end
  end

  def destroy
    @list.destroy
    redirect_to :root
  end
  private
  def list_params
    
    params.require(:list).permit(:title,time_zone: []).merge(user: current_user)
    
 
     
  end


  def set_list
  @list =List.find_by(id: params[:id])

  end

end