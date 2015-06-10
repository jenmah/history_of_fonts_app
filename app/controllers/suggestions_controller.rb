class SuggestionsController < ApplicationController

  def index
    @suggestions = Suggestion.all
    @fonts = Font.all
    render json: @suggestions
  end

  def new
    @suggestion = Suggestion.new
  end

  def create
    @suggestion = Suggestion.create(suggestion_params)
    render json: @suggestion
  end


  private

    def suggestion_params
      params.require(:suggestion).permit(:name, :suggested_font, :reason)
    end


end
