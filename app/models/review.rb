class Review < ApplicationRecord
  validates :rating, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
  validates :comment, length:{maximum: 500}
  belongs_to :restaurant
  belongs_to :reviewer, class_name: 'User', foreign_key: 'reviewer_id'
end
