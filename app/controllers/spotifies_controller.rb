class SpotifiesController < ApplicationController

  def index
    @spotifies=Spotify.all
  end
  def new
    @spotify=Spotify.new
  end
  def create
    @spotify=Spotify.new(spotify_params)
    if @spotify.save
      flash[:notice]="spotify is entered"
      redirect_to spotifies_path
    else
      render 'new '
    end
  end
  private
  def spotify_params
    params.require(:spotify).permit(:gmail, :password)
  end
end
