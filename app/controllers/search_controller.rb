class SearchController < ApplicationController

  def index
    @fonts = Font.all
    q = params[:q][:font_name]
    @search_results = Font.search(font_name_cont: q).result

  end

end