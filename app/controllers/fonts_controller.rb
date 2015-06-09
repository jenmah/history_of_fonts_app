class FontsController < ApplicationController

  def index
    @fonts = Font.all
  end

  def show
    @font = Font.find(params[:id])
    @combination = Combination.all
  end

end