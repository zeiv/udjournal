class AddDepartmentIdToSabstracts < ActiveRecord::Migration
  def change
    add_column :sabstracts, :department_id, :integer
  end
end
