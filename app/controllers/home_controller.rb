class HomeController < ApplicationController
  def index
    @message = "# Hello World!!!"
    @texts = Text.all
  end
end
