class CreateDiscoveryAudios < ActiveRecord::Migration[7.0]
  def change
    create_table :discovery_audios do |t|
      t.string :mediaUrl
      t.timestamps
    end
  end
end
