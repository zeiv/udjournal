class DropAbstracts < ActiveRecord::Migration
  def change
  	drop_table :abstracts
  end
end
