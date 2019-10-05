class Goal < ApplicationRecord
  belongs_to :user
  validates :target_time, presence: true
  validates :name, uniqueness: true
end
