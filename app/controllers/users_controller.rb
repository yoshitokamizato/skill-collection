class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @skill = @user.skills.new
    @skills =
      User.joins(:skills).where(id: current_user).group(:email).group(:name)
        .select('user_id,email, name, sum(study_time) as study_time')
  end
end
