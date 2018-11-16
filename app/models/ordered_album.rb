class OrderedAlbum < ApplicationRecord
  belongs_to :order
  belongs_to :album

  validates :quantity,  presence: true
  validates :order_id, presence: true
  validates :album_id, presence: true

  before_save :set_unit_price
	before_save :set_total_price

  def unit_price
		if persisted?
			self[:unit_price]
		else
			order.price
		end
	end

	def total_price
		unit_price * quantity
	end

	private

		def set_unit_price
			self[:unit_price] = unit_price
		end

		def set_total_price
			self[:total_price] = quantity * set_unit_price
		end
end
