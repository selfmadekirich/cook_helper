class Ingredient < ApplicationRecord
  has_many :Recipe, through: :Ingred_Recipe
  belongs_to :user
  validates :meas_type ,length:{is: 2}

  #:name,:amount,:meas_type = not nil
  validates  :name, :amount,:meas_type, presence: true

  #:amount=int
  validates :amount, numericality: { only_integer: true }

end
