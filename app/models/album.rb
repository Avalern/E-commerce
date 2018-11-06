class Album < ApplicationRecord
  belongs_to :genre
  has_many :ordered_albums
  has_many :orders, through: :ordered_albums
  mount_uploader :image, ImageUploader
end
