class AddUserToPdf < ActiveRecord::Migration
  def change
  	add_column :pdfs, :user_id, :integer  	
  end
end
