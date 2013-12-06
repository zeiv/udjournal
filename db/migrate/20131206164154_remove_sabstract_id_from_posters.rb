class RemoveSabstractIdFromPosters < ActiveRecord::Migration
  def change
    remove_column :posters, :sabstract_id, :integer
  end
end
