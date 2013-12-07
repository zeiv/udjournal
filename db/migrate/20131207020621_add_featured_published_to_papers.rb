class AddFeaturedPublishedToPapers < ActiveRecord::Migration
  def change
    add_column :papers, :featured, :boolean
    add_column :papers, :published, :boolean
  end
end
