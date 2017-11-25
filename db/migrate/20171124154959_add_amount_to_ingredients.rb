class AddAmountToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :amount, :float
  end
end
