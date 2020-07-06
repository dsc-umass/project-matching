class Project < ApplicationRecord
  acts_as_taggable_on :skills
  has_many :positions
  belongs_to :organization
  validates :title, length: { in: 3..20 }
  validates :organization_id, presence :true
end
