class QuestioncommentsController < ApplicationController
  def create
    @questioncomment = Questioncomment.new(questioncomment_params)
    @questioncomment.user_id = current_user.id
    if @questioncomment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def questioncomment_params
    params.require(:questioncomment).permit(:text)
  end
end
