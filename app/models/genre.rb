class Genre < ApplicationRecord
  has_many :albums, dependent: :destroy

  validates :genre_name, presence: true, uniqueness: true
  def name

    genre_name
  end
end