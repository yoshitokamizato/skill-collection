class GoalsController < ApplicationController
  def new
    @goal = Goal.new
  end

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

  def create
    Goal.create(
      name: skill_params[:name],
      target_time: skill_params[:target_time],
      user_id: current_user.id
    )
    redirect_to goal_path(current_user.id)
  end

  def skill_params
    params.require(:goal).permit(:name, :target_time)
  end
end
