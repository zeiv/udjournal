class AddSabstractIdToPapers < ActiveRecord::Migration
  def change
    add_column :papers, :sabstract_id, :integer
  end
end
