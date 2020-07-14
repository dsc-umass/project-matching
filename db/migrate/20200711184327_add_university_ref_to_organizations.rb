class AddUniversityRefToOrganizations < ActiveRecord::Migration[6.0]
  def change
    add_reference :organizations, :university, null: false, foreign_key: true
  end
end
