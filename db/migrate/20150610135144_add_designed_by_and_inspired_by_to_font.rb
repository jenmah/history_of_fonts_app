class AddDesignedByAndInspiredByToFont < ActiveRecord::Migration
  def change
    add_column :fonts, :designed_by, :string
    add_column :fonts, :inspired_by, :text
  end
end
