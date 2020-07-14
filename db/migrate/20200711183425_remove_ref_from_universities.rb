class RemoveRefFromUniversities < ActiveRecord::Migration[6.0]
  def change
    change_table :universities do |t|
      t.remove :project_id
      t.remove :user_id
      t.remove :organization_id
    end
  end
end
