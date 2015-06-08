class ChangeYearReleasedToInteger < ActiveRecord::Migration
  def change
    change_column :fonts, :year_released, 'integer USING CAST(year_released AS integer)'
  end
end
