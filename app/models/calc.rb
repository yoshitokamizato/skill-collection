class Calc < ApplicationRecord
  def self.skill(user)
    user = user.joins(:skills).group(:email, :name).select(
    'email, name, sum(study_time) as study_time'
  )
  end

  def self.goal(user)
    user = user.joins(:goals).group(:email, :name).select(
      'email, name, target_time'
    )
  end

  def user_skill
    Skill.joins(:user).group(:email, :name).select('nickname, user_id, email, name, sum(study_time) as study_time')
  end
end
