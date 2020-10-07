class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @date = DateTime.now.strftime("%m月%d日")
  end

  def new 
    @question = Question.new
    @date = DateTime.now.strftime("%m月%d日")
  end

  def create
    Question.create(question_params)
    redirect_to questions_path
  end

  private
  def question_params
    params.require(:question).permit(:title).merge(user_id: current_user.id)
  end
end
