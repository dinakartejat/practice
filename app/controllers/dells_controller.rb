class DellsController < ApplicationController

  def index
    @dells=Dell.all
  end

  def new
    @dell=Dell.new
  end
  def create
    @dell=Dell.new(dellnew_params)
    if @dell.save
      flash[:notice]="dell laptop is successfully created"
      redirect_to dells_path
    else
      render 'new'
    end
  end


     private
     def dellnew_params
       params.require(:dell).permit(:name, :ram)
     end
end
,
