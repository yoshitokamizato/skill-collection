class Skill < ApplicationRecord
  belongs_to :user
  validates :study_time, presence: true
end
