class Combination < ActiveRecord::Base
  has_many :combination_fonts
  has_many :fonts, through: :combination_fonts
end