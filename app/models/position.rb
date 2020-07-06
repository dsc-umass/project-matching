class Position < ApplicationRecord
  acts_as_taggable_on :skills
  belongs_to :project
  validates :title, length: { in: 3..20 }
  validates :project_id, presence: true
  validates :user_id, presence: true
  validates :integer, presence: true
end
