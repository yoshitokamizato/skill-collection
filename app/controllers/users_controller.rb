class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @skill = @user.skills.new
    @skills = @user.skills.all
  end
end
