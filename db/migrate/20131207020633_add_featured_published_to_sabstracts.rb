class AddFeaturedPublishedToSabstracts < ActiveRecord::Migration
  def change
    add_column :sabstracts, :featured, :boolean
    add_column :sabstracts, :published, :boolean
  end
end
