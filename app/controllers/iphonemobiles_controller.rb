class IphonemobilesController < ApplicationController
  def index
    @iphonemobiles=Iphonemobile.all
  end


  def new
    @iphonemobile=Iphonemobile.new
  end


    def create
      @iphonemobile=Iphonemobile.new(iphonemobile_params)
      if @iphonemobile.save
        flash[:notice]="iphonemobile is successfully created "
        redirect_to iphonemobiles_path
      else
        render 'new '
      end
    end
      private
      def iphonemobile_params
        params.require(:iphonemobile).permit(:name, :price)

      end


end
