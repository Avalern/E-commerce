class CreateOrderedAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :ordered_albums do |t|
      t.integer :quantity
      t.references :order, foreign_key: true
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
