class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def new
    @skill = Skill.new
  end

  def create
    Skill.create(
      name: skill_params[:name],
      study_time: skill_params[:study_time],
      user_id: current_user.id
    )
    redirect_to user_path(current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  private

  def skill_params
    params.require(:skill).permit(:name, :study_time)
  end
end