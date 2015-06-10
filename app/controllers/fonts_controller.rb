class FontsController < ApplicationController

  def index
    @fonts = Font.all
    @q = Font.ransack(params[:q])
    @font = @q.result(distinct: true)
  end

  def show
    @fonts = Font.all
    @font = Font.find(params[:id])
    @combinations = @font.combinations
  end

end