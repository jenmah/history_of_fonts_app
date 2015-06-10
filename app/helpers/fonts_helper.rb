module FontsHelper
  
  def path_font_for(font_name)
    @font = Font.find_by_font_name(font_name)    
  end

end
