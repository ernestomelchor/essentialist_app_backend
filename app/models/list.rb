class List < ApplicationRecord
  #associations
  has_many :items
  belongs_to :user
end
