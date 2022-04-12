class CreateSingles < ActiveRecord::Migration[7.0]
  def change
    create_table :singles do |t|

      t.timestamps
    end
  end
end
