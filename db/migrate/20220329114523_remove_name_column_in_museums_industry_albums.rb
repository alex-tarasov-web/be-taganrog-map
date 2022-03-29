class RemoveNameColumnInMuseumsIndustryAlbums < ActiveRecord::Migration[7.0]
  def change
    remove_column :albums, :name
    remove_column :industries, :name
    remove_column :museums, :name
  end
end
