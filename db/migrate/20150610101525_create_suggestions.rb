class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :suggested_font
      t.text :reason

      t.timestamps null: false
    end
  end
end
