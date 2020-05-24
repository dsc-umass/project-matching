class Organization < ApplicationRecord
    validates :name, presence: true, length: { minimum: 5 }
    validates :description, presence: true, length: { minimum: 20 }
    validates :size, numericality: { only_integer: true, greater_than_or_equal_to: 1}
end
