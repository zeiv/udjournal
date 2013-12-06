class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :email
      t.string :affiliation
      t.integer :sabstract_id

      t.timestamps
    end
  end
end
