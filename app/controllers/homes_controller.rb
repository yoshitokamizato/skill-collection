class HomesController < ApplicationController
  def index
    @message = '# Hello World!!!'
    @texts = Text.all
  end
end
