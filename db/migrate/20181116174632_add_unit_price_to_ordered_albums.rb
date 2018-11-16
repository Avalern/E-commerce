class AddUnitPriceToOrderedAlbums < ActiveRecord::Migration[5.2]
  def change
    add_column :ordered_albums, :unit_price, :decimal
  end
end
