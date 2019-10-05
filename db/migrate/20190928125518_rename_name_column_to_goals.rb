class RenameNameColumnToGoals < ActiveRecord::Migration[5.2]
  def change
    rename_column :goals, :name, :skill_name
  end
end
