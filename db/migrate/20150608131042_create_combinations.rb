class CreateCombinations < ActiveRecord::Migration
  def change
    create_table :combinations do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
