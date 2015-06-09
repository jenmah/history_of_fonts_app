class FontsController < ApplicationController

  def index
    @fonts = Font.all
  end

  def show
    @fonts = Font.all
    @font = Font.find(params[:id])
    @combinations = Combination.all
  end

end