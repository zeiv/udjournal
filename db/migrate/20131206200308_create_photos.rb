class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.text :caption
      t.integer :document_id
      t.string :document_type

      t.timestamps
    end
  end
end
