class AddAuth0FieldsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :uid, :string
    add_index :users, :uid, unique: true
    add_column :users, :provider, :string
  end
end
