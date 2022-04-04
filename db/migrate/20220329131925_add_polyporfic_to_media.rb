class AddPolyporficToMedia < ActiveRecord::Migration[7.0]
  def change
    remove_column :media, :album_id
    add_column :media, :mediumable_id, :integer
    add_column :media, :mediumable_type, :string
  end
end
