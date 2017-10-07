class WeekDay < ApplicationRecord
  belongs_to :meal_plan
  has_many :meals
end
