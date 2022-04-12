class CreateDiscoveryVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :discovery_videos do |t|
      t.string :mediaUrl
      t.timestamps
    end
  end
end
