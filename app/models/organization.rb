class Organization < ApplicationRecord
    # has_one :admin
    has_and_belongs_to_many :users
end
