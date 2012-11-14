class CreatePdfs < ActiveRecord::Migration
  def change
    create_table :pdfs do |t|
      t.string :title
      t.text :desc
      t.string :pdf
      t.timestamps
    end
  end
end
