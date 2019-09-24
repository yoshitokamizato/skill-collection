class GoalsController < ApplicationController
  def new
    @goal = Goal.new
  end

  def create
    Goal.create(
      name: skill_params[:name],
      target_time: skill_params[:target_time],
      user_id: current_user.id
    )
    redirect_to user_path(current_user.id)
  end

  def skill_params
    params.require(:goal).permit(:name, :target_time)
  end
end
