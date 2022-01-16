class RemoveNameFromArtists < ActiveRecord::Migration[6.1]
  def change
    remove_column :artists, :name, :string
    remove_column :artists, :email, :string
    add_column :artists, :username, :string
  end
end
