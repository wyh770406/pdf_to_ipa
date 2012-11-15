class AddEmailToPdf < ActiveRecord::Migration
  def change
  	add_column :pdfs, :email, :string
  end
end
