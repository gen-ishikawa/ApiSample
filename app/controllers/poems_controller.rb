class PoemsController < ApplicationController
  def index
    @poems = Poem.all
    render json: @poems
  end
end
