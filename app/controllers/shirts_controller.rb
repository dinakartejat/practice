class ShirtsController < ApplicationController
def index
  @shirts=Shirt.all
end
def new
  @shirt=Shirt.new
end
def create
  @shirt=Shirt.new(shirt_params)
  if @shirt.save
    flash[:notice]="shirts is created"
    redirect_to shirts_path
  else
    render 'new'
  end
end
private
def shirt_params
  params.require(:shirt).permit(:name)
end
end
,
