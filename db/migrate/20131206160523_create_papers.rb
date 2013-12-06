class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.integer :sabstract_id
      t.integer :user_id
      t.integer :department_id
      t.date :date_published

      t.timestamps
    end
  end
end
