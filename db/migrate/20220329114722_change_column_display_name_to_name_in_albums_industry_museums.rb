class ChangeColumnDisplayNameToNameInAlbumsIndustryMuseums < ActiveRecord::Migration[7.0]
  def change
    remove_column :albums, :displayName
    remove_column :museums, :displayName
    remove_column :industries, :displayName

    add_column :albums, :name, :string
    add_column :museums, :name, :string
    add_column :industries, :name, :string
  end
end
