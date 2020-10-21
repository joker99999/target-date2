class UsersController < ApplicationController
  def index
  end

  def show
    @users = User.all
    @target = Target.where(user_id: params[:id])
    @date = DateTime.now.strftime("%m月%d日")
  end
end
