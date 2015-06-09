class FontsController < ApplicationController

  def index
    @fonts = Font.all
    # @search = Font.search(params[:q])
    # @font_searched = @search.result
  end

  def show
    @fonts = Font.all
    @font = Font.find(params[:id])
    @combinations = Combination.all
  end

end