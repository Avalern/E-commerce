class PageController < ApplicationController
  def show
    @pages = Page.find(params[:id])
  end
end
