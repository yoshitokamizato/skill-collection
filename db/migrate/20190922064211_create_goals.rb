class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :target_time, default: 0
      t.timestamps
    end
  end
end
