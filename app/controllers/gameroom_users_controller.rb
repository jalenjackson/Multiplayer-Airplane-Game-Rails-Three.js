class GameroomUsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_gameroom
  def create
    @gameroom_user = @gameroom.gameroom_users.where(user_id: current_user.id).first_or_create
    redirect_to @gameroom
  end

  def destroy
    @gameroom_user = @gameroom.gameroom_users.where(user_id: current_user.id).destroy_all
    redirect_to gamerooms_path
  end

  private

    def set_gameroom
      @gameroom = Gameroom.find(params[:gameroom_id])
    end
end