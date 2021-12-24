class User < ApplicationRecord
  has_many :Measures
  has_many :Recipes
  has_many :Ingredients

  #:id,:username, :login, :passwordHash = not nil
  validates :id,:username, :login, :password_digest, presence: true
  has_secure_password
end

