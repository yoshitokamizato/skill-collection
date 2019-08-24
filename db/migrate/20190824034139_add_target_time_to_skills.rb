class AddTargetTimeToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :target_time, :integer, default: 0
  end
end
