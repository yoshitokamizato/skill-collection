class InsertInitialSkillLists < ActiveRecord::Migration[5.2]
  def change
    skills = ["HTML","CSS","Javascript","PHP","Ruby","Python","Swift","Unity","Java","C#"]
    skills.each do |skill|
      SkillList.create(name: skill)
    end
  end
end
