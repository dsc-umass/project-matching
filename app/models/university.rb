class University < ApplicationRecord
    has_many :organizations
    has_many :users
    has_many :projects
    validates :name, presence: true
end
