class ArtistsController < ApplicationController
  
  def index
    @artists = Artist.all 
  end 
  
  def new 
  end 
   
  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end
   
  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end
  
  def show 
    @artist = Artist.find(params[:id])
  end 
   
   
  private
  
   
  def artist_params(*args)
    params.require(:artist).permit(:name, :bio)
  end
  
end
