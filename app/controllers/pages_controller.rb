class PagesController < ApplicationController
  def index
  end

  def home
    @my_meals = current_user.user_meals.all
  end
end
