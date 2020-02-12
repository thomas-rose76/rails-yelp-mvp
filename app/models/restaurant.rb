class Restaurant < ApplicationRecord
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian', 'asian']
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  has_many :reviews, dependent: :destroy
end
