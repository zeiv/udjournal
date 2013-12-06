class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.integer :user_id
      t.integer :department_id
      t.integer :sabstract_id

      t.timestamps
    end
  end
end
