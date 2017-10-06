class CreateUserMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :user_meals do |t|
      t.references :user, foreign_key: true
      t.references :meal, foreign_key: true
      t.boolean :selected
    end
  end
end
