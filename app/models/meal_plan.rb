class MealPlan < ApplicationRecord
  has_many :week_days
  belongs_to :user
end
