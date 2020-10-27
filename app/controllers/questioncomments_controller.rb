class QuestioncommentsController < ApplicationController
  def create
    Questioncomment.create(questioncomment_params)
    redirect_back(fallback_location: root_path)
  end

  private
  def questioncomment_params
    params.require(:questioncomment).permit(:text).merge(user_id: current_user.id, question_id: params[:question_id])
  end
end
