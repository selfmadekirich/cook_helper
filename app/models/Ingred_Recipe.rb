class Ingred_Recipe < ApplicationRecord
  belongs_to :Ingredient
  belongs_to :Recipe
end
