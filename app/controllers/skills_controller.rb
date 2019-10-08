class SkillsController < ApplicationController
  def index
    @skills = Skill.skills
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
    redirect_to twitters_index_path
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  private

  def skill_params
    params.require(:skill).permit(:name, :study_time)
  end
end
