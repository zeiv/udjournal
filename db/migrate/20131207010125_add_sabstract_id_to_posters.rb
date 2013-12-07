class AddSabstractIdToPosters < ActiveRecord::Migration
  def change
    add_column :posters, :sabstract_id, :integer
  end
end
