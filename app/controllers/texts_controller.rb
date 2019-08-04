class TextsController < ApplicationController
  def show
    @text = Text.find(params[:id])
  end
end