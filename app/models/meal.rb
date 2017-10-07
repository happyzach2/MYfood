class Meal < ApplicationRecord
  has_many :user_meals, foreign_key: :meal_id
  has_many :users, through: :user_meals
  has_many :ingredients
  belongs_to :week_day
end
