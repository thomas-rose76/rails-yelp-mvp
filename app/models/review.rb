class Review < ApplicationRecord
  RATINGS = {:in => 0..5}
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, :inclusion => RATINGS, numericality: { only_integer: true}
end
