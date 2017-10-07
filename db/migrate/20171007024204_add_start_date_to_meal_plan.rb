class AddStartDateToMealPlan < ActiveRecord::Migration[5.1]
  def change
    add_column :meal_plans, :start_date, :date
  end
end
