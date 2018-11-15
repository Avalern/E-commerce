class AlbumController < ApplicationController
  def index
    @albums = Album.order(:name).page(params[:page]).per(2)
  end

  def show
    @album = Album.find(params[:id])
  end
end
