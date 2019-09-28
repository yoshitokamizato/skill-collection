class RenameSkillNameColumnToName < ActiveRecord::Migration[5.2]
  def change
    rename_column :goals, :skill_name, :name
  end
end
