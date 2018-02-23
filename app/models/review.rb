class Review < ApplicationRecord
  validates :rating, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
  validates :comment, length:{maximum: 500}
  validates :reviewer_id, uniqueness: {scope: :restaurant_id, message: "You've already reviewed this restaurant!"}
  belongs_to :restaurant
  belongs_to :reviewer, class_name: 'User', foreign_key: 'reviewer_id'
end
