class List < ApplicationRecord
  self.table_name = 'wat_lis_lists'
  has_many :bookmarks, dependent: :destroy, foreign_key: 'wat_list_bookmarks'
  has_many :movies, through: :bookmarks, foreign_key: 'wat_lis_movies'
  validates :name, uniqueness: true, presence: true
  has_one_attached :photo
end
