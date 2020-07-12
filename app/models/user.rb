class User < ApplicationRecord
  #validations
  has_secure_password
  validates :email, presence: true, uniqueness: true

  #associations
  has_many :lists
  has_many :items, through: :lists
end
