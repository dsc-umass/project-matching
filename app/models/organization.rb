require 'csv'

class Organization < ApplicationRecord
  # has_one :admin
  acts_as_taggable_on :types
  has_and_belongs_to_many :users
  has_many :projects
  validates :name, presence: true
  validates :email, presence: true

  def self.to_csv
    CSV.generate do |csv|
      csv << ["Name", "Email", "Projects: Positions", "Users"]

      all.each do |organization|
        projects = nil
        users = nil
        row = [organization.name, organization.email]
        # if organization.users.any?
        #   users = organization.users.collect{|u| "#{u.first_name} #{u.email}"}.join(", ")
        #   row << users
        # end
        if organization.projects.any?
          all_projects = organization.projects
          projects = []
          all_projects.each do |project|
            projects.append("#{project.title}: [#{project.positions.collect { |p| p.title }.join(", ")}]  ")
          end
          projects = projects.join(", ")
        end
        csv << [organization.name, organization.email, projects]
      end
    end
  end
end