class PagesController < ApplicationController
  def index
  end

  def home
    @my_meal_plan = current_user.meal_plans
    @my_meals = current_user.user_meals.all
  end
end
