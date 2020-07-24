class List < ApplicationRecord
  # validations
  validates :name, presence: true, uniqueness: true

  #associations
  has_many :items, dependent: :destroy
  belongs_to :user
end
