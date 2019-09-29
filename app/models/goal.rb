class Goal < ApplicationRecord
  belongs_to :user
  belongs_to :skill, foreign_key: :name, primary_key: :name
  validates :target_time, presence: true
  validates :name, uniqueness: true
end
