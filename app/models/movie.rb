class Movie < ApplicationRecord
  self.table_name = 'wat_lis_movies'
  has_many :bookmarks, foreign_key: 'wat_lis_movie_id'
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
end
