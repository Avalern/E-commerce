class Album < ApplicationRecord
  belongs_to :genre
  has_many :ordered_albums
  has_many :orders, through: :ordered_albums
  mount_uploader :image, ImageUploader

  validates :genre_id, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
