class Organization < ApplicationRecord
    # has_one :admin   
    acts_as_taggable_on :tags
    acts_as_taggable_on :type
    has_and_belongs_to_many :users
    has_many :projects
end
