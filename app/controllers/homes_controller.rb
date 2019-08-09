class HomesController < ApplicationController
  def index
    @q = Text.ransack(params[:q])
    @texts = @q.result(distinct: true)
  end
end
