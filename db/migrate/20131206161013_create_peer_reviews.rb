class CreatePeerReviews < ActiveRecord::Migration
  def change
    create_table :peer_reviews do |t|
      t.integer :document_id
      t.string :document_type
      t.integer :user_id

      t.timestamps
    end
  end
end
