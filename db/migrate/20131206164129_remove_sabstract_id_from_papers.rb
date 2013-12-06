class RemoveSabstractIdFromPapers < ActiveRecord::Migration
  def change
    remove_column :papers, :sabstract_id, :integer
  end
end
