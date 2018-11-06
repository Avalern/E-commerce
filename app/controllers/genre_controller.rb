class GenreController < ApplicationController
  def index
    @genres = Genre.order(:genre_name)
  end

  def show
    @genre = Genre.find(params[:genre])
  end
end
