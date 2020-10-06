class SharesController < ApplicationController
  def new
    @share = Share.new
    @date = DateTime.now.strftime("%m月%d日")
  end

  def create
    Share.create!(share_params)
    redirect_to shares_path
  end

  def index
    @shares = Share.all
    @date = DateTime.now.strftime("%m月%d日")
  end

  private
  def share_params
    params.require(:share).permit(:share).merge(user_id: current_user.id)
  end
end
