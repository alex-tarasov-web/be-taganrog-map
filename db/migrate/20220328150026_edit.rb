class Edit < ActiveRecord::Migration[7.0]
  def change
    add_column :media, :album_id, :integer
  end
end
