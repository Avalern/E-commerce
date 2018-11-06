class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.int :album_id
      t.string :name
      t.text :description
      t.decimal :price
      t.string :artist_name
      t.date :release_date
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
