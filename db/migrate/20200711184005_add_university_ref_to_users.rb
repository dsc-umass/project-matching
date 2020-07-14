class AddUniversityRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :university, null: false, foreign_key: true
  end
end
