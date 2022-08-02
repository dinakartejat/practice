class AmazonloginpagesController < ApplicationController

def index
  @amazonloginpages=Amazonloginpage.all
end

def new
 @amazonloginpage=Amazonloginpage.new
end

 def create
   @amazonloginpage=Amazonloginpage.new(amazonloginpagenew_params)
   if @amazonloginpage.save
     flash[:notice]="amazon is successfully loginned"
     redirect_to amazonloginpages_path
   else
     render 'new '
   end
 end
 private
 def amazonloginpagenew_params
   params.require(:amazonloginpage).permit(:username, :lastname)

 end
end
,
