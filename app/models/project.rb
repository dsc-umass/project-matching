class Project < ApplicationRecord
  has_many :positions
  belongs_to :organization
end
