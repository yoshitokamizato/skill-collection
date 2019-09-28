class Skill < ApplicationRecord
  belongs_to :user
  belongs_to :goal, foreign_key: :name, primary_key: :skill_name
  validates :study_time, presence: true
end
