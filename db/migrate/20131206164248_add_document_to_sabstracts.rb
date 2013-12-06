class AddDocumentToSabstracts < ActiveRecord::Migration
  def change
    add_column :sabstracts, :document_id, :integer
    add_column :sabstracts, :document_type, :string
  end
end
