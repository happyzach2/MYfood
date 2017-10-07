class WeekDay < ApplicationRecord
  has_one :meal
  belongs_to :meal_plan
end
