class AlbumController < ApplicationController
  def index
    #@al = Genre.find(params[:genre_id])
    @albums = Album.order(:name).page(params[:page]).per(2)
  end

  def show
    @album = Album.find(params[:id])
  end
end
