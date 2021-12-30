class Recipe < ApplicationRecord
  has_many :Ingred_Recipes
  belongs_to :user
  validates :meal_type ,length:{is: 2}
  #:id,:name,:instructions,:meal_type = not nil
  validates :name,:instructions,:meal_type,presence: true
end

