class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id).skills
    @skill = @user.new
    @skills = @user.all
  end
end
