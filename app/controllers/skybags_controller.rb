class SkybagsController < ApplicationController
  def index
    @skybags=Skybag.all
  end
  def new
    @skybag=Skybag.new
  end
  def create
    @skybag=Skybag.new(skybag_params)
    if @skybag.save
      flash[:notice]="Skybag created successfully"
      redirect_to skybags_path
    else
      render 'new'
    end
  end


    private
  def skybag_params
    params.require(:skybag).permit(:name)
  end
end
,
