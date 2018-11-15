class SearchController < ApplicationController
  def index
  end

  def result
    @alb = Album.where('name LIKE ?',"%#{params[:q]}%")
  end
end
