class List < ApplicationRecord
  self.table_name = 'wat_lis_lists'
  has_many :bookmarks, foreign_key: 'wat_lis_list_id', dependent: :destroy
  has_many :movies, through: :bookmarks, foreign_key: 'wat_lis_list_id'
  validates :name, uniqueness: true, presence: true
  has_one_attached :photo
end
