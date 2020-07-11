class CreateUniversities < ActiveRecord::Migration[6.0]
  def change
    create_table :universities do |t|
      t.string :name
      t.references :project
      t.references :user
      t.references :organization
      t.timestamps
    end
  end
end
