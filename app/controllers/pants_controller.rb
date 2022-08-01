class PantsController < ApplicationController
  def index
    @pants=Pant.all
  end
  def new
    @pant=Pant.new
  end
  def create
    @pant=Pant.new(pant_params)
    if @pant.save
      flash[:notice]="pant is created"
      redirect_to pants_path
    else
      render "new "
    end
  end
  def pant_params
    params.require(:pant).permit(:name )
  end

end
