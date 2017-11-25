class AddAmountTypeToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :amount_type, :string
  end
end
