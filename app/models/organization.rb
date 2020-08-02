class Organization < ApplicationRecord
    # has_one :admin
    acts_as_taggable_on :types
    has_and_belongs_to_many :users
    has_many :projects
    validates :name, presence: true
    validates :email, presence: true
    def self.to_csv
        attributes = %w{id name email projects}

        CSV.generate(headers: true) do |csv|
            csv << attributes

            all.each do |organization|
                csv << attributes.map{ |attr| organization.send(attr) }
            end
        end
    end
end
