class GenreController < ApplicationController
  def index
    @genres = Genre.joins(:albums).order(:genre_name)
  end

  def show
    @genre = Genre.find(params[:id])
  end
end
