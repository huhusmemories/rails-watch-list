class Movie < ApplicationRecord
  # Bookmarks not connected yet
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
