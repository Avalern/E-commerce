class AlbumController < ApplicationController
  def index
    #@al = Genre.find(params[:genre_id])
    @albums = Album.order(:name).page(params[:page]).per(2)
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
  end
  def create
  end
  def edit
  end

  def update
  end

  def destroy
  end
  private
    def album_params
      params.require[:albums].permit(:name, :price)
    end
end
