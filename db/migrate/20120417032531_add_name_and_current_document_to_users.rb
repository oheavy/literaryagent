class AddNameAndCurrentDocumentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :current_document_id, :integer
  end
end
