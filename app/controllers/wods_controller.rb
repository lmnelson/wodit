class WodsController < ApplicationController
  def index
    @wods = Wod.all
  end

  def new
  end

  def create
    @wod = Wod.new(wod_params)

    @wod.save
    redirect_to @wod
  end

  def show
    @wod = Wod.find(params[:id])
  end

  private
    def wod_params
      params.require(:wod).permit(:date, :time, :description)
    end
end
