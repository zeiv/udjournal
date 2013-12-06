class AddPdfColumnsToPapers < ActiveRecord::Migration
  def self.up
  	add_attachment :papers, :pdf
  end

  def self.down
  	remove_attachment :papers, :pdf
  end
end
