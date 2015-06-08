class Font < ActiveRecord::Base
  has_many :combinations, through: :combination_fonts
end
