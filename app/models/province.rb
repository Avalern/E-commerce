class Province < ApplicationRecord
  has_many :customers

  validates :province_name, presence: true
  validates :hst, presence: true
end
