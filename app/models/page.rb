class Page < ApplicationRecord
  validates :heading,  presence: true
  validates :content,  presence: true
end
