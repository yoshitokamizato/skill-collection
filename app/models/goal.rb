class Goal < ApplicationRecord
  belongs_to :user
  has_many :skills, foreign_key: :skill_name, primary_key: :name
  validates :target_time, presence: true
  validates :name, uniqueness: true
end
