class AddRemainingToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :remaining, :integer
  end
end
