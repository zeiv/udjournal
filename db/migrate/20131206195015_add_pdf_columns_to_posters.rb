class AddPdfColumnsToPosters < ActiveRecord::Migration
  def self.up
  	add_attachment :posters, :pdf
  end

  def self.down
  	remove_attachment :posters, :pdf
  end
end
