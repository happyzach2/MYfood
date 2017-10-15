class PagesController < ApplicationController
  def index
  end

  def home
    @recent_meal_plan = current_user.meal_plans.last
    if params[:daily_view].present?
      @week_days = @recent_meal_plan.week_days.paginate(:page => params[:page], :per_page => 1)
    elsif params[:weekly_view].present?
      @recent_meal_plan = current_user.meal_plans.last
    else
      @recent_meal_plan = current_user.meal_plans.last
    end
    @my_meals = current_user.user_meals.all
  end

end
