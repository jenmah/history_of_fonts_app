class CreateFonts < ActiveRecord::Migration
  def change
    create_table :fonts do |t|
      t.string :font_name
      t.string :year_released
      t.string :classification
      t.text :history

      t.timestamps null: false
    end
  end
end
