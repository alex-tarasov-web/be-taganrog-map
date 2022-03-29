class EditMediaUrlColumnInMediaTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :media, :media_url
    remove_column :media, :name
    add_column :media, :content, :string
  end
end
