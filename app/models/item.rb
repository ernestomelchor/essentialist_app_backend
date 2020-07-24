class Item < ApplicationRecord
  # validations
  validates :description, presence: true

  # associations
  belongs_to :list
  belongs_to :user
end
