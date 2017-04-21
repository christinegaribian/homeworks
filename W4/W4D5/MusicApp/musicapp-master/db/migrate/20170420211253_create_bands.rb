class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.string :name, null: false
      t.timestamps
      t.index :name
    end
  end
end
