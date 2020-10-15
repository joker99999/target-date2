class HealthsController < ApplicationController
  def new
    @date = DateTime.now.strftime("%m月%d日")
    @health = Health.new
    @users = User.all
  end

  def create
    Health.create(health_params)
    redirect_to healths_path
  end

  def index
    @healths = Health.all
    @date = DateTime.now.strftime("%m月%d日")
    @users = User.all
  end

  private
  def health_params
    params.require(:health).permit(:question1_id, :question2_id, :question3_id, :question4_id, :question5_id).merge(user_id: current_user.id)
  end
end
