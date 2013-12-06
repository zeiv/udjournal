class CreateAbstracts < ActiveRecord::Migration
  def change
    create_table :abstracts do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :departmnent_id

      t.timestamps
    end
  end
end
