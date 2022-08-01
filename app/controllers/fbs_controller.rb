class FbsController < ApplicationController
  def index
    @fbs=Fb.all
  end
  def new
    @fb=Fb.new
  end
  def create
    @fb=Fb.new(fbs_params)
    if @fb.save
      flash[:notice]="fb is successfully created "
      redirect_to fbs_path
    else
      render 'new'
    end
  end
  private
  def fbs_params
    params.require(:fb).permit(:firstname, :lastname)
  end

end
