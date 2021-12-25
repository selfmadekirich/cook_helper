class User < ApplicationRecord
  has_many :Measures
  has_many :Recipes
  has_many :Ingredients

  #:id,:username, :login, :passwordHash = not nil
  validates :username, :login,  presence: true

  PASSWORD_FORMAT = /\A
  (?=.{8,})          # Must contain 8 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
/x

  validates :password,
            presence: true,
            length: { in: 6..15 },
            format: { with: PASSWORD_FORMAT },
            confirmation: true,
            on: :create

  validates :password,
            allow_nil: true,
            length: { in: 6..15 },
            format: { with: PASSWORD_FORMAT },
            confirmation: true,
            on: :update

  has_secure_password
end

