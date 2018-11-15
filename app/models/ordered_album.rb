class OrderedAlbum < ApplicationRecord
  belongs_to :order
  belongs_to :album

  validates :quantity,  presence: true
  validates :order_id, presence: true
  validates :album_id, presence: true
end
