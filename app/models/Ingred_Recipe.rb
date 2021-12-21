class Ingred_Recipe < ApplicationRecord
  belongs_to :Ingredient
  belongs_to :Recipe

  #ingrd_id,rcpt_id=int
  validates :ingrd_id,:rcpt_id, numericality: { only_integer: true }
end
