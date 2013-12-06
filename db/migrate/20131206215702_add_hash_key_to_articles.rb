class AddHashKeyToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :hash_key, :string
  end
end
