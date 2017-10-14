class WeekDayMealsController < ApplicationController

  def new
    redirect_to root_path, notice: "hello"
  end
end
