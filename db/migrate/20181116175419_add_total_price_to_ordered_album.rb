class AddTotalPriceToOrderedAlbum < ActiveRecord::Migration[5.2]
  def change
    add_column :ordered_albums, :total_price, :decimal
  end
end
