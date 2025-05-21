class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian), message: "%{value} is not a valid category" }
end


class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true

  # validates :rating, inclusion: { in: %w(1 2 3 4 5), message: "%{value} is not a valid rating" }
end
