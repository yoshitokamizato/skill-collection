class UsersController < ApplicationController
  def show
    @user = User.where(id: current_user)
    @skill = Skill.new
    @user_skills =
      @user.joins(:skills).group(:email, :name).select(
        'email, name, sum(study_time) as study_time'
      )
    @goal = Goal.new
    @user_goals =
      @user.joins(:goals).group(:email, :name).select(
        'email, name, target_time'
      )
  end
end
