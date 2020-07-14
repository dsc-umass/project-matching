class Organization < ApplicationRecord
    # has_one :admin   
    acts_as_taggable_on :types
    has_and_belongs_to_many :users
    has_many :projects
    belongs_to :universities
    validates :name, presence: true
    validates :email, presence: true
end
