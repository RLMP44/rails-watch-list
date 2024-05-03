class Bookmark < ApplicationRecord
  self.table_name = 'wat_lis_bookmarks'
  belongs_to :movie, foreign_key: 'wat_lis_movie_id'
  belongs_to :list, foreign_key: 'wat_lis_list_id'
  validates :wat_lis_movie_id, uniqueness: { scope: :list, foreign_key: 'wat_lis_list_id' }
  validates :comment, length: { minimum: 6 }

  def movie_id
    wat_lis_movie_id
  end
end
