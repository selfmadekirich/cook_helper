class Measure < ApplicationRecord
  belongs_to :user
  # :meas_name, :grams,:meas_role = not nil
  validates :meas_name, :grams,:meas_role, presence: true
  validates :meas_role ,length:{is: 1}
  #grams=int
  validates :grams,numericality: { only_integer: true }
end
