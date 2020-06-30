class Project < ApplicationRecord
  acts_as_taggable_on :skills
  has_many :positions
  belongs_to :organization
end
