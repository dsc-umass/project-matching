class Position < ApplicationRecord
  acts_as_taggable_on :skills
  belongs_to :project
end
