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

  def destroy
    @suggestion = Suggestion.find(params[:id])
    @suggestion.destroy

    respond_to do |format|
      format.json {render json: { head: :no_content}}
    end
  end

  def edit
    @suggestion = Suggestion.find(params[:id])
    render json: @suggestion
  end

  def update
    @suggestion = Suggestion.find(params[:id])
    render json: @suggestion
  end

  private

    def suggestion_params
      params.require(:suggestion).permit(:name, :suggested_font, :reason)
    end


end
