class ChangeColorToBgColorInAlbumsIndustryMuseums < ActiveRecord::Migration[7.0]
  def change
    remove_column :albums, :color
    remove_column :industries, :color
    remove_column :museums, :color
    add_column :albums, :bgColor, :string
    add_column :industries, :bgColor, :string
    add_column :museums, :bgColor, :string
  end
end
