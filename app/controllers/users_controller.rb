class UsersController < ApplicationController
  def show
    @user = User.where(id: current_user)
    @skill = Skill.new
    @user_skills = Calc.skill(@user)
    @goal = Goal.new
    @user_goals = Calc.goal(@user)
  end
end
