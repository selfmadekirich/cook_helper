class User < ApplicationRecord
  has_many :Measures
  has_many :Recipes
  has_many :Ingredients

end

