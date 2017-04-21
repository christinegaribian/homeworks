class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :name, null: false
      t.integer :album_id, null: false
      t.text :lyrics
      t.boolean :is_bonus, null: false

      t.index :album_id
      t.index :name 

      t.timestamps
    end
  end
end
