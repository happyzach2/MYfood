class MealPlan < ApplicationRecord
  has_many :week_days
  has_many :week_day_meals, through: :week_days
  has_many :meals, through: :week_days
  has_many :ingredients, through: :week_day_meals
  belongs_to :user


  def next
    self.class.where("created_at > ?", created_at).first
  end

  def previous
    self.class.where("created_at < ?", created_at).last
  end

end
