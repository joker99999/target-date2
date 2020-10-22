class SharesController < ApplicationController
  def new
    @share = Share.new
    @date = DateTime.now.strftime("%m月%d日")
    @users = User.all
  end

  def create
    Share.create!(share_params)
    redirect_to shares_path
  end

  def index
    # @comments = @share.sharecomment.includes(:username)
    @shares = Share.all
    @date = DateTime.now.strftime("%m月%d日")
    @users = User.all
  end

  def show
    @users = User.all
    @date = DateTime.now.strftime("%m月%d日")
    @share = Share.find(params[:id])
    # @sharecomments = Sharecomment.find(params[:id])
    @sharecomments = Sharecomment.all
    @sharecomment = Sharecomment.new
  end

  private
  def share_params
    params.require(:share).permit(:share).merge(user_id: current_user.id)
  end
end
