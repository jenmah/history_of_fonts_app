class Combination < ActiveRecord::Base
  has_many :fonts, through: :combination_fonts
end