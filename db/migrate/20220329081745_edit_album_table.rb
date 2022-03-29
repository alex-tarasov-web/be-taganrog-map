class EditAlbumTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :albums, :category
  end
end
