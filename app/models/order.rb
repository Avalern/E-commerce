class Order < ApplicationRecord
  belongs_to :customer
  has_many :ordered_albums
  has_many :albums, through: :ordered_albums

  validates :order_id,  presence: true
  validates :album_id, presence: true

end
