class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.integer :album_id
      t.string :name
      t.text :description
      t.decimal :price, precision: 5, scale: 2, default: 0
      t.string :artist_name
      t.date :release_date
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
