class Recipe < ApplicationRecord
  has_many :Ingred_Recipes
  validates :meal_type ,length:{is: 2}
end

