class UsersController < ApplicationController
  def show
    @user = User.where(id: current_user)
    @skill = Skill.new
    @user_skills = @user.user_skill
    @goal = Goal.new
    @user_goals = @user.user_goal
  end
end
