class AddFeaturedPublishedToPosters < ActiveRecord::Migration
  def change
    add_column :posters, :featured, :boolean
    add_column :posters, :published, :boolean
  end
end
