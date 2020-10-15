class UsersController < ApplicationController
  def index
  end

  def show
    @users = User.all
    @date = DateTime.now.strftime("%m月%d日")
  end
end
