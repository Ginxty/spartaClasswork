class SongsController < ApplicationController
  def index
    @album = Album.find(params[:album_id])
    @songs = @album.songs
    
  end

  def show
    @album = Album.find(params[:album_id])
    @song = @album.songs.find(params[:id])
  end

  def new
    @song = Song.new
    @album = Album.find(params[:album_id])
  end

  def create
    album = Album.find(params[:album_id])
    song = album.songs.create(song_params)
    
    redirect_to album_song_path(params[:album_id], song.id)
  
  end

  def edit  
    @album = Album.find(params[:album_id])
    @song = @album.songs.find(params [:id])
    
    redirect_to album_song_path(params[:album_id], song.id)
  end

  def update
    album = Album.find(params[:album_id])
    song = album.songs.find(params[:id])
    song.update(song_params)

    redirect_to album_song_path(params[:album_id], song.id)
  end

  def destroy
    album.find(params[:album_id]).songs.destroy(params[:id])
    redirect_to albums_url
  end

  protected
  def song_params
    params.require(:song).permit(:title, :duration)
  end
end