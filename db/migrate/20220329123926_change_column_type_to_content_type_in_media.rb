class ChangeColumnTypeToContentTypeInMedia < ActiveRecord::Migration[7.0]
  def change
    remove_column :media, :type
    add_column :media, :contentType, :string
  end
end
