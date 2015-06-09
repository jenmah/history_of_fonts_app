class Font < ActiveRecord::Base
  has_many :combination_fonts
  has_many :combinations, through: :combination_fonts

end
