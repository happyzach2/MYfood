class WeekDayMealsController < ApplicationController

  def new
    @week_day = WeekDay.find(params[:week_day_id])
    @meal = UserMeal.find(params[:meal_id]).meal
    @week_day_meal = WeekDayMeal.create!(week_day_id: @week_day.id , meal_id: @meal.id)
    redirect_to @week_day, notice: "Meal added to day"
  end
end
