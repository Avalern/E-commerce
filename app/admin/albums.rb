ActiveAdmin.register Album do
  permit_params :name, :description, :price, :artist_name, :release_date, :image, :genre_id

end
