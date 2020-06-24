class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.string :title
      t.integer :project_id
      t.string :user_id
      t.string :integer

      t.timestamps
    end
  end
end
