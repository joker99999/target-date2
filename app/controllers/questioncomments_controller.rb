class QuestioncommentsController < ApplicationController
  def create
    @questioncomment = Questioncomment.create(questioncomment_params)
    respond_to do |format|
      format.html { redirect_to question_path(params[:question_id])  }
      format.json
    end
  end

  private
  def questioncomment_params
    params.require(:questioncomment).permit(:text).merge(user_id: current_user.id, question_id: params[:question_id])
  end
end
