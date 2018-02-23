class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :restaurants, foreign_key: "owner_id", source: :restaurant
  has_many :reviews, foreign_key: "reviewer_id"
end
