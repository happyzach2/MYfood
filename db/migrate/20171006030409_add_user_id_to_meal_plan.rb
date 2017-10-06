class AddUserIdToMealPlan < ActiveRecord::Migration[5.1]
  def change
    add_reference :meal_plans, :user, foreign_key: true
  end
end
