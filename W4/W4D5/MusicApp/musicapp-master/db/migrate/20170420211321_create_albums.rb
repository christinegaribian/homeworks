class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.integer :band_id, null: false
      t.string :title, null: false
      t.boolean :is_live, null: false
      t.timestamps

      t.index :band_id
      t.index :title
    end
  end
end
