class CreateMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :media do |t|
      t.string :name
      t.string :type
      t.string :media_url
    end
  end
end
