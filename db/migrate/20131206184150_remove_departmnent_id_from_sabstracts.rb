class RemoveDepartmnentIdFromSabstracts < ActiveRecord::Migration
  def change
    remove_column :sabstracts, :departmnent_id, :integer
  end
end
