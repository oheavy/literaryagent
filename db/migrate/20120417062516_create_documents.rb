class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.belongs_to :author, :null => false
      
      t.timestamps
    end
  end
end
