class FlipkartsController < ApplicationController
  def index
    @flipkarts=Flipkart.all
  end
  def new
    @flipkart=Flipkart.new
  end
  def create
    @flipkart=Flipkart.new(flipkart_params)
    if @flipkart.save
      flash[:notice]="flipkart is successfully loginned"
      redirect_to flipkarts_path
    else
      render 'new '
    end
  end
  def flipkart_params
    params.require(:flipkart).permit(:username, :password)
  end
end
,
