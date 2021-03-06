class WodsController < ApplicationController

  before_action :current_user
  before_filter :create_org

  def create_org
    @id = current_user.id
    @org = Org.new(user_id: @id).save

  end

  def index
    @user = current_user
    @wods = @user.wods
    @org = @user.org
  end

  def create
    @wod = current_user.wods.build(wod_params)
    @wod.save
    flash[:success] = "Wod Created"
    redirect_to root_path
  end

  def show
    @wod = Wod.find(params[:id])
  end

  def edit
    @user = current_user
    @wod = @user.wods.find(params[:id])
  end

  def update
    @user = current_user
    @wod = @user.wods.find(params[:id])
    @wods = @user.wods
    if @wod.update_attributes(wod_params)
      flash[:notice] = 'Wod successfully updated'
      redirect_to(root_path)
    else
      render "edit"
    end
  end

  def destroy
    @wod = Wod.find_by(id: params[:id])
    @wod.destroy
    flash[:success] = "Wod Deleted"
    redirect_to root_path
  end

  private

    def wod_params
      params.require(:wod).permit(:date, :time, :description, :name)
    end

end
