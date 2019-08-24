class UsersController < ApplicationController
  def show
    @user = User.where(id: current_user)
    @skill = Skill.new
    @user_skills =
      @user.joins(:skills).group(:email, :name).select(
        'email, name, sum(study_time) as study_time, target_time'
      )
  end
end
