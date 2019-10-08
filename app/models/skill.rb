class Skill < ApplicationRecord
  belongs_to :user
  validates :study_time, presence: true

  def self.skills
    joins(:user).group(:email, :name).select('nickname, user_id, email, name, sum(study_time) as study_time')
  end

  def self.new_skill

  end
end
