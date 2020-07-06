class Organization < ApplicationRecord
    # has_one :admin   
    acts_as_taggable_on :types
    has_and_belongs_to_many :users
    has_many :projects
    validates :name, presence :true
    validates :email, confirmation { case_sensitive: false }
    validates :confirmation, presence :true
    validates :created_at, presence :true
    validates :updated_at, presence :true
end
