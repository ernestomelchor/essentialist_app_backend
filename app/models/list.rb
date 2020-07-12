class List < ApplicationRecord
  #associations
  has_many :items, dependent: :destroy
  belongs_to :user
end
