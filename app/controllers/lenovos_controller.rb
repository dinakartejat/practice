class LenovosController < ApplicationController
  def index
    @lenovos=Lenovo.all
  end
  def new
    @lenovo=Lenovo.new
  end
  def create
    @lenovo=Lenovo.new(lenovo_newparams)
     if @lenovo.save
       flash[:notice]="lenovo is successfully is created "
       redirect_to lenovos_path
     else
       render 'new'
     end
   end
   private
   def lenovo_newparams
     params.require(:lenovo).permit(:name, :price)
   end

end
,
