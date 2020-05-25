class Organization < ApplicationRecord
  validates :name, presence: true, length: { minimum: 4, maximum: 30 }
  validates :description, presence: true, length: { minimum: 10, maximum: 500 }
  validates :size, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
