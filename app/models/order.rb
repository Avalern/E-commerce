class Order < ApplicationRecord
  belongs_to :customer
  has_many :ordered_albums
  has_many :customers, through: :ordered_albums

  validates :order_id,  presence: true
  validates :amount_due, presence: true
  validates :customer_id, presence: true

end
