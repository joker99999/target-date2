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
    @sharecomment = Sharecomment.new
    # @comments = @share.sharecomment.includes(:username)
    @shares = Share.all
    @date = DateTime.now.strftime("%m月%d日")
    @users = User.all
    @sharecomment = Sharecomment.new(sharecomment_params)
    @sharecomment.user_id = current_user.id
    if @sharecomment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def show
    @users = User.all
    @date = DateTime.now.strftime("%m月%d日")
    @share = Share.find(params[:id])
  end

  private
  def share_params
    params.require(:share).permit(:share).merge(user_id: current_user.id)
  end
end
