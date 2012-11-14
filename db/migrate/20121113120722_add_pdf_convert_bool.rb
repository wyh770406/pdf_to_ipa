class AddPdfConvertBool < ActiveRecord::Migration
  def up
  	  	add_column :pdfs, :converted, :boolean, :default=>false
  end

  def down
  end
end
