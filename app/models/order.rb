class Order < ApplicationRecord
  belongs_to :customer
  has_many :ordered_albums
  has_many :albums, through: :ordered_albums

  validates :order_id,  presence: true
  validates :album_id, presence: true

  def subtotal
		ordered_albums.collect {|ordered_album| ordered_album.valid? ? (ordered_album.unit_price*ordered_album.quantity) : 0}.sum
	end

	private
		def set_subtotal
			self[:subtotal] = subtotal
		end

end
