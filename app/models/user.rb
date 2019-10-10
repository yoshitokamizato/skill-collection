class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  has_many :skills
  has_many :goals

  def self.user_skill
    joins(:skills).group(:email, :name).select(
      'email, name, sum(study_time) as study_time'
    )
  end

  def self.user_goal
    joins(:goals).group(:email, :name).select(
      'email, name, target_time'
    )
  end
end
