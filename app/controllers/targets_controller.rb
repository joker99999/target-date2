class TargetsController < ApplicationController
  def new
    @target = Target.new
    @date = DateTime.now.strftime("%m月%d日")
  end

  def create
    Target.create!(target_params)
    redirect_to targets_path
  end

  def index
    @targets = Target.all
    @date = DateTime.now.strftime("%m月%d日")
  end

  private
  def target_params
    params.require(:target).permit(:title).merge(user_id: current_user.id)
  end
end
