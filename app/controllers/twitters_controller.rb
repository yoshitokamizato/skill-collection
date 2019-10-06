class TwittersController < ApplicationController
  def index
    @user = User.where(id: current_user)
    @skill = Skill.new
    @twitter_now = Skill.where(user_id: current_user.id).order(created_at: :desc).first
    @twitter_sum = Skill.where(user_id: current_user.id, name: @twitter_now.name)
    # @user_skills =
    #   @user.joins(:skills).group(:email, :name).select(
    #     'email, name, sum(study_time) as sum_study_time, target_time'
    #   )
  end
end
