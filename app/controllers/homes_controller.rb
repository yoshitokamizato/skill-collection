class HomesController < ApplicationController
  def index
    @texts = Text.all
  end
end
