class Movie < ApplicationRecord
  self.table_name = 'wat_lis_movies'
  has_many :bookmarks
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
end
