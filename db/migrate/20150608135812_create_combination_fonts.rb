class CreateCombinationFonts < ActiveRecord::Migration
  def change
    create_table :combination_fonts do |t|
      t.integer :combination_id
      t.integer :font_id
      t.string :page_element

      t.timestamps null: false
    end
  end
end
