class List < ApplicationRecord
  self.table_name = 'wat_lis_lists'
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, uniqueness: true, presence: true
  has_one_attached :photo
end
