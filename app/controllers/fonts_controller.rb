class FontsController < ApplicationController

  def index
    @fonts = Font.all
  end

end