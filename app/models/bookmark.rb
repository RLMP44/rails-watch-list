class Bookmark < ApplicationRecord
  self.table_name = 'wat_lis_bookmarks'
  belongs_to :movie
  belongs_to :list
  validates :wat_lis_movie_id, uniqueness: { scope: :list } # was :movie
  validates :comment, length: { minimum: 6 }

  def movie_id
    wat_lis_movie_id
  end
end
