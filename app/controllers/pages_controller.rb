class PagesController < ApplicationController
  def index
  end

  def home
    @selected_meal_plan = current_user.meal_plans.last
    if params[:next].present?
      @selected_meal_plan = @selected_meal_plan.next
    elsif params[:prev].present?
      @selected_meal_plan = @selected_meal_plan.previous
      params[:prev] = false
    else
      @selected_meal_plan = current_user.meal_plans.last
    end
    if params[:daily_view].present?
      @week_days = @selected_meal_plan.week_days.paginate(:page => params[:page], :per_page => 1)
    elsif params[:weekly_view].present?
      @week_days = @selected_meal_plan.week_days.paginate(:page => params[:page], :per_page => 7)
    else
      @recent_meal_plan = current_user.meal_plans.last
    end
    @my_meals = current_user.user_meals.all
  end

end
