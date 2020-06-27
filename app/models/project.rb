class Project < ApplicationRecord
  has_many :positions
  belongs_to :organizations
end
