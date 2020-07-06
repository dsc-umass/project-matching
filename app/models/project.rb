class Project < ApplicationRecord
  acts_as_taggable_on :skills
  has_many :positions
  belongs_to :organization
  validates :title, length: { in: 3..20 }
  validates :organization_id, presence :true
  validates :created_at, presence :true
  validates :updated_at, presence :true
end
