class TextsController < ApplicationController
  def show
    @commands = Command.all
  end
end
