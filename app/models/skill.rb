class Skill < ApplicationRecord
  belongs_to :user
  has_many :goals, foreign_key: :name, primary_key: :name
  validates :study_time, presence: true
end
