class CreateShoppingLists < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_lists do |t|
      t.references :meal_plan, foreign_key: true

      t.timestamps
    end
  end
end
