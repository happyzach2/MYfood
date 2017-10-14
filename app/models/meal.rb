class Meal < ApplicationRecord
  has_many :user_meals, foreign_key: :meal_id
  has_many :users, through: :user_meals
  has_many :ingredients

  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
end
