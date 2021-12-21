class CreateIngredRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :ingred_recipes do |t|
      t.belongs_to :Recipe
      t.belongs_to :Ingredient

    end
  end
end
