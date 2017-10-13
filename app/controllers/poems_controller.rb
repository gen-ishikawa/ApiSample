class PoemsController < ApplicationController
  def index
    @poems = Poem.all
    render json: @poems
  end

  def show
    set_poem
    render json: @poems
  end

  private
    def set_poem
      @poems = Poem.find(params[:id])
    end

    def poem_params
      params.require(:poem).permit(:title, :content)
    end
end
