class Meal < ApplicationRecord
  has_many :user_meals, foreign_key: :meal_id
  has_many :users, through: :user_meals
  has_many :ingredients
  has_many :week_day_meals, foreign_key: :meal_id
  has_many :week_days, through: :week_day_meals

  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
end
