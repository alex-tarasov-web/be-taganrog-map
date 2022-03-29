class AddParamsInAlbumTable < ActiveRecord::Migration[7.0]
  def change
    add_column :albums, :displayName, :string
    add_column :albums, :mediaUrl, :string
    add_column :albums, :isWide, :boolean
    add_column :albums, :color, :string
    add_column :albums, :textColor, :string
    add_column :albums, :onMapsLink, :string
  end
end
