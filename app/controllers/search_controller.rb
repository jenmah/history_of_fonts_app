class SearchController < ApplicationController

  def index
    @fonts = Font.all
    q = params[:q][:font_name]
    @search_results = Font.search(font_name_cont: q).result
    # @font = Font.find(params[:id])

    #   suggested_font = params[:suggested_font]
    #   reason = params[:reason]
    #   sql = "insert into suggestions (suggested_font, reason) values ('#{suggested_font}', '#{reason}') returning *"
    #   @suggestion = run_sql(sql).first
    #   if request.xhr?
    #     json @suggestion
    #   else
    #     redirect_to '/index'
    #   end
    end
  end




# private

# def run_sql(sql)
#   connect = PG.connect(dbname: 'font_app_development', host: 'localhost')
#   begin
#     result = connect.exec(sql)
#   ensure
#     connect.close
#   end
#   result
# end