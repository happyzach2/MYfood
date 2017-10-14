class WeekDayMealsController < ApplicationController

  def new
    @week_day = WeekDay.find(params[:week_day_id])
    @meal = UserMeal.find(params[:meal_id]).meal
    @week_day_meal = WeekDayMeal.create!(week_day_id: @week_day.id , meal_id: @meal.id)
    redirect_to @week_day, notice: "Meal added to day"
  end

  def destroy
    @week_day = WeekDay.find(params[:id])
    @week_day_meal = WeekDayMeal.find(params[:week_day_meal_id])
    @week_day_meal.destroy
    respond_to do |format|
      format.html { redirect_to @week_day , notice: 'Meal was removed.' }
      format.json { head :no_content }
    end
  end

end
