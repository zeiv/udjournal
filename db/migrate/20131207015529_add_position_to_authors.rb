class AddPositionToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :position, :integer
  end
end
