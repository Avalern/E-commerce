class Order < ApplicationRecord
  belongs_to :customer
  has_many :ordered_albums
  has_many :customers, through: :ordered_albums
end
