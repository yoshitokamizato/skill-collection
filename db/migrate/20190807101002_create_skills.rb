class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.integer :study_time
      t.integer :user_id
      t.timestamps
    end
  end
end
