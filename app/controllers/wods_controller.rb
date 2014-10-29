class WodsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @wods = Wod.all
  end

  def new
  end

  def create
    @wod = Wod.new(wod_params)
    @wod.save
    redirect_to root_path
  end

  def show
    @wod = Wod.find(params[:id])
  end

  def edit
    @wod = Wod.find(params[:id])
  end

  def destroy
    @wod = Wod.find_by(id: params[:id])
    @wod.destroy
    redirect_to root_path
  end

  private
    def wod_params
      params.require(:wod).permit(:date, :time, :description, :name)
    end
end
