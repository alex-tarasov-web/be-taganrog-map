class CreateMuseums < ActiveRecord::Migration[7.0]
  def change
    create_table :museums do |t|
      t.string :name
      t.string :displayName
      t.string :mediaUrl
      t.boolean :isWide
      t.string :color
      t.string :textColor
      t.string :onlineMuseumLink
      t.string :onMapsLink
    end
  end
end
