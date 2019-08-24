class SkillsController < ApplicationController
  def index
    @skills =
      Skill.joins(:user).group(:email, :name).select(
        'user_id, email, name, sum(study_time) as study_time'
      )
  end

  def new
    @skill = Skill.new
  end

  def create
    Skill.create(
      name: skill_params[:name],
      study_time: skill_params[:study_time],
      target_time: skill_params[:target_time],
      user_id: current_user.id
    )
    redirect_to user_path(current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  private

  def skill_params
    params.require(:skill).permit(:name, :study_time, :target_time)
  end
end
