class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.text :content
      t.references :document, :null => false
      t.belongs_to :current_version

      t.timestamps
    end
  end
end
