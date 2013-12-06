class AddHashKeyToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :hash_key, :string
  end
end
