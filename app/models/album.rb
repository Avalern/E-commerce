class Album < ApplicationRecord
  belongs_to :genre
  has_many :ordered_albums
  has_many :orders, through: :ordered_albums
  mount_uploader :image, ImageUploader

  validates :album_id, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :artist_name, presence: true
end
