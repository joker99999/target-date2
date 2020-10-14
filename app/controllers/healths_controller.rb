class HealthsController < ApplicationController
  def new
    @date = DateTime.now.strftime("%m月%d日")
    @health = Health.new
  end

  def create
    Health.create(health_params)
    redirect_to healths_path
  end

  def index
    @healths = Health.all
    @date = DateTime.now.strftime("%m月%d日")
  end

  private
  def health_params
    params.require(:health).permit(:question1, :question2, :question3, :question4, :question5).merge(user_id: current_user.id)
  end
end
